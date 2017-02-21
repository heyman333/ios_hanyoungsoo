//
//  SecondViewController.m
//  Navigataion
//
//  Created by HanYoungsoo on 2017. 2. 21..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title = @"gi";
    [self.navigationController.navigationBar setBarTintColor:[UIColor blueColor]];
    
    UIButton *customBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    [customBtn setBackgroundImage:[UIImage imageNamed:@"back"] forState:UIControlStateNormal];
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:customBtn];
    self.navigationItem.backBarButtonItem = item;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
