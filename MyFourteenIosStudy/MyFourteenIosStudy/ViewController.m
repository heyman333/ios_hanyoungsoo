//
//  ViewController.m
//  MyFourteenIosStudy
//
//  Created by HanYoungsoo on 2017. 2. 3..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property UIButton *testBtn;
@end
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat offSetX = 15;
    CGFloat offSetY = 15;
    _testBtn = [UIButton buttonWithType:UIButtonTypeInfoDark];
    _testBtn.frame = CGRectMake(self.view.frame.size.width/2 - 50, offSetY, 100, 35 );
    [_testBtn setTintColor:[UIColor redColor]];
    
    [_testBtn setTitle:@"눌러주세요" forState:UIControlStateNormal];
    [_testBtn setTitle:@"놔주세요~~" forState:UIControlStateHighlighted];
    [_testBtn addTarget:self action:@selector(didSelectedBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_testBtn];

}

-(void)didSelectedBtn:(UIButton *)sender{
    if(_testBtn.tintColor == [UIColor redColor]){
       [_testBtn setTintColor:[UIColor blueColor]];
    }
    else if(_testBtn.tintColor == [UIColor blueColor]){
       [_testBtn setTintColor:[UIColor redColor]];
    }
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
