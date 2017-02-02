//
//  ViewController.m
//  MyEleventhIIosStudy
//
//  Created by HanYoungsoo on 2017. 2. 2..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    CGRect screenRect = [[UIScreen mainScreen] bounds];
//    CGFloat screenWidth = screenRect.size.width;
//    CGFloat screenHeight = screenRect.size.height;
//    
//    UIView *myView = [[UIView alloc] initWithFrame:CGRectMake(15, 15, 345, 100)];
//    [myView setBackgroundColor:[UIColor blueColor]];
//    
//    UIView *myView2 = [[UIView alloc] initWithFrame:CGRectMake(15, screenHeight-115, 345, 100)];
//    [myView2 setBackgroundColor:[UIColor redColor]];
//    
//
//    [self.view addSubview:myView];
//    [self.view addSubview:myView2];
    
    UIView *myView = [[UIView alloc] initWithFrame:CGRectMake(15, 15, 330, 500)];
    [myView setBackgroundColor:[UIColor redColor]];
    
    UIView *myView2 = [[UIView alloc] initWithFrame:CGRectMake(15, 15, 300, 470)];
    [myView2 setBackgroundColor:[UIColor blueColor]];
    
    UIView *myView3 = [[UIView alloc] initWithFrame:CGRectMake(15, 15, 270, 440)];
    [myView3 setBackgroundColor:[UIColor brownColor]];

    [self.view addSubview:myView];
    [myView addSubview:myView2];
    [myView2 addSubview:myView3];
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
