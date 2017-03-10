//
//  ViewController.m
//  Block2
//
//  Created by HanYoungsoo on 2017. 3. 10..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "ViewController.h"
#import "myView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet myView *myView2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.myView2 changeTextAction:^NSString *{
        return @"hello!";
        
    }];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
