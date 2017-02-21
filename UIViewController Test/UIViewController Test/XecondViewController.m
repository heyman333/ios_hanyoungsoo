//
//  XecondViewController.m
//  UIViewController Test
//
//  Created by HanYoungsoo on 2017. 2. 20..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "XecondViewController.h"

@interface XecondViewController ()

@end

@implementation XecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onBackBtn:(UIButton *)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
    
    
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
