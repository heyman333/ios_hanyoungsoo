//
//  ViewController.m
//  GetterTest
//
//  Created by HanYoungsoo on 2017. 3. 17..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "ViewController.h"
#import "ClassTest.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ClassTest *classTest = [[ClassTest alloc] init];
    [classTest setVal:10];
    
    NSLog(@"%ld", [classTest val]);
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
