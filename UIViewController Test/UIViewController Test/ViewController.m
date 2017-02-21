//
//  ViewController.m
//  UIViewController Test
//
//  Created by HanYoungsoo on 2017. 2. 20..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "XecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}



- (IBAction)onSelectBtn:(UIButton *)sender {
    //############# 스토리 보드 사용법 ########################//
//    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
//    SecondViewController *sVC = [storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
//
//    self.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
//    [self presentViewController:sVC animated:YES completion:nil];
//    
    
    //############# XIB 사용법 ########################//
    XecondViewController *xVC = [[XecondViewController alloc] init];
    
//    [xVC setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
//
//    [self presentViewController:xVC animated:YES completion:nil];

    [self.navigationController pushViewController:xVC animated:YES];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
