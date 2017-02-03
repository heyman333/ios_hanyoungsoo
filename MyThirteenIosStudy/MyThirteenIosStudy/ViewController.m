//
//  ViewController.m
//  MyThirteenIosStudy
//
//  Created by HanYoungsoo on 2017. 2. 3..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView *profile = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width,self.view.frame.size.height-100) ];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height-100,self.view.frame.size.width,100)];
    
    
    label.text = @"안녕 세정아";
    label.font = [UIFont systemFontOfSize:20];
    
    label.textAlignment=1;
    
    [profile setAlpha:0.7];
    profile.image = [UIImage imageNamed:@"test_img.jpg"];
    [profile setContentMode:UIViewContentModeScaleAspectFit];
    
    [self.view addSubview:profile];
    [self.view addSubview:label];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
