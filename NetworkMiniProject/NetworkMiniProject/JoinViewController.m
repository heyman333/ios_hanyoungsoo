//
//  JoinViewController.m
//  NetworkMiniProject
//
//  Created by HanYoungsoo on 2017. 3. 16..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "JoinViewController.h"
#import "DataCenter.h"

@interface JoinViewController ()

@property (weak, nonatomic) IBOutlet UITextField *idTF;
@property (weak, nonatomic) IBOutlet UITextField *pwd1TF;
@property (weak, nonatomic) IBOutlet UITextField *pwd2TF;
@property DataCenter *dataCenter;
@end

@implementation JoinViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataCenter = [DataCenter sharedInstance];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onJoinBtn:(UIBarButtonItem *)sender {
    NSLog(@"efe");
    NSString *user_id = self.idTF.text;
    NSString *user_pwd1 = self.pwd1TF.text;
    NSString *user_pwd2 = self.pwd2TF.text;
    
    [self.dataCenter.nManager memberJoin:user_id pwd:user_pwd1 rePwd:user_pwd2 completion:^(BOOL isSuccess, id response) {
        
        if (isSuccess) {
            NSLog(@"성공");
            UIAlertController *fail = [UIAlertController alertControllerWithTitle:@"회원가입 성공" message:@"회원가입을 환영합니다." preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *ok = [UIAlertAction actionWithTitle:@"넹!^^" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                NSString *token = [response objectForKey:@"key"];
                [self.dataCenter.userdefaults setObject:token forKey:@"TOKEN"];
                
                 UIViewController *settingVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SettingViewController"];
                [self.navigationController pushViewController:settingVC animated:YES];
                [self.dataCenter.userdefaults setObject:[NSNumber numberWithBool:YES] forKey:@"loginExp"];
                
                
            }];
            [fail addAction:ok];
            [self presentViewController:fail animated:YES completion:nil];

        }
        else{
            NSLog(@"실패");
            UIAlertController *fail = [UIAlertController alertControllerWithTitle:@"회원가입 실패" message:@"뭐가 잘못되긴 했는데..." preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *ok = [UIAlertAction actionWithTitle:@"음..알았습니다" style:UIAlertActionStyleDefault handler:nil];
            [fail addAction:ok];
            [self presentViewController:fail animated:YES completion:nil];
        }
    }];
}

- (IBAction)onBackBtn:(UIBarButtonItem *)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}

@end
