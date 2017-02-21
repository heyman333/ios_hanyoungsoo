//
//  ViewController.m
//  Navigataion
//
//  Created by HanYoungsoo on 2017. 2. 21..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.navigationItem.title = @"gi";
    [self.navigationController.navigationBar setBarTintColor:[UIColor redColor]];
    
    UIButton *customBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    [customBtn setBackgroundImage:[UIImage imageNamed:@"back"] forState:UIControlStateNormal];
    
    [customBtn addTarget:self action:@selector(onBackBtn:) forControlEvents:UIControlEventTouchUpInside];

    UIButton *back = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    [back setBackgroundImage:[UIImage imageNamed:@"back"] forState:UIControlStateNormal];
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:back];
    self.navigationItem.backBarButtonItem = item;
    
//    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:customBtn];
    UINavigationBar *aaa = [[UINavigationBar alloc] init];

    
}


-(void)onBackBtn:(UIButton *)sender{
    
    NSLog(@"버튼이 눌렸습니다.");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
