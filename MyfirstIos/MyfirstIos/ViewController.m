//  ViewController.m
//  MyfirstIos
//
//  Created by HanYoungsoo on 2017. 1. 16..
//  Copyright © 2017년 YoungsooHan. All rights reserved.


#import "ViewController.h"
#import <AFNetworking.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnAction
{

    
    if(self.titleLB.textColor == [UIColor greenColor]){
        [self.titleLB setTextColor:[UIColor blueColor]];
    }
    else{
        [self.titleLB setTextColor:[UIColor greenColor]];
        }
    
    
}

/*
 These soureces are used for
 
*/


- (IBAction)btn2Action
{
    
    if(self.titleLB2.isHidden == true)
    {
        [self.titleLB2 setHidden: false];
        [self.visibleBTn setTitle:@"보입니다." forState:UIControlStateNormal];
    }
    else{
        [self.titleLB2 setHidden: true];
        [self.visibleBTn setTitle:@"안 보입니다." forState:UIControlStateNormal];
    }
    
    
}

@end
