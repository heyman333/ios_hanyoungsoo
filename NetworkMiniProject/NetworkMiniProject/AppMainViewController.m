//
//  AppMainViewController.m
//  NetworkMiniProject
//
//  Created by HanYoungsoo on 2017. 3. 16..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "AppMainViewController.h"
#import "DataCenter.h"

@interface AppMainViewController ()

@end

@implementation AppMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onLogoutBtn:(UIButton *)sender {
    DataCenter *dataCenter = [DataCenter sharedInstance];
    NSString *token = [dataCenter.userdefaults objectForKey:@"TOKEN"];
    
    [dataCenter.nManager logOut:token completion:^(BOOL isSuccess, id response) {
        if (isSuccess) {
            [self.navigationController popToRootViewControllerAnimated:YES];
            NSString *msg = [response objectForKey:@"detail"];
            [dataCenter.userdefaults removeObjectForKey:@"TOKEN"];
            NSLog(@"%@",msg);
        }
        else{
            NSLog(@"로그아웃 실패");
        }
    }];
    
}



@end
