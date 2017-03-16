//
//  ViewController.m
//  NetworkMiniProject
//
//  Created by HanYoungsoo on 2017. 3. 16..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "ViewController.h"
#import "SettingViewController.h"
#import "AppMainViewController.h"
#import "DataCenter.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *idLB;
@property (weak, nonatomic) IBOutlet UITextField *pwdLB;
@property DataCenter *dataCenter;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    BOOL sessionAvailable = NO;
    BOOL hasEXp = NO;
    self.dataCenter = [DataCenter sharedInstance];

    
    if ([self.dataCenter.userdefaults objectForKey:@"TOKEN"] != nil) {
        sessionAvailable = YES;
    }
    if ([self.dataCenter.userdefaults objectForKey:@"loginExp"] ==
        [NSNumber numberWithBool:YES]){
        hasEXp = YES;
    }
    
    if(sessionAvailable && hasEXp){
        AppMainViewController *appMainVC = [self.storyboard instantiateViewControllerWithIdentifier:@"AppMainViewController"];
        [self.navigationController pushViewController:appMainVC animated:YES];
    }
    else if(sessionAvailable && !hasEXp){
        SettingViewController *settingVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SettingViewController"];
        [self.navigationController pushViewController:settingVC animated:YES];
        [self.dataCenter.userdefaults setObject:[NSNumber numberWithBool:YES] forKey:@"loginExp"];
    }
    else{
        NSLog(@"로그인창");
    }
    
}
- (IBAction)onLoginBtn:(UIButton *)sender {
    
    NSString *user_id = self.idLB.text;
    NSString *user_pwd = self.pwdLB.text;
    
    [self.dataCenter.nManager logIn:user_id pwd:user_pwd completion:^(BOOL isSuccess, id response) {
        if (isSuccess) {
            NSLog(@"성공");
            NSString *token = [response objectForKey:@"key"];
            [self.dataCenter.userdefaults setObject:token forKey:@"TOKEN"];
            
            AppMainViewController *mainVC = [self.storyboard instantiateViewControllerWithIdentifier:@"AppMainViewController"];
            [self.navigationController pushViewController:mainVC animated:YES];
            
        }
        else{
            NSLog(@"실패");
            UIAlertController *fail = [UIAlertController alertControllerWithTitle:@"로그인실패" message:@"뭐가 잘못되긴 했는데..." preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *ok = [UIAlertAction actionWithTitle:@"음..알았습니다" style:UIAlertActionStyleDefault handler:nil];
            [fail addAction:ok];
            [self presentViewController:fail animated:YES completion:nil];
            
        }
        
    }];

}

@end

