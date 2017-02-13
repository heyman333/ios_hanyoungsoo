//
//  ViewController2.m
//  Application Life Cycle
//
//  Created by HanYoungsoo on 2017. 2. 13..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()
@property (weak, nonatomic) IBOutlet UIView *testFrame2;

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)loadView{
    [super loadView];
    NSLog(@"---------------");
    NSLog(@"loadView2");
    
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSLog(@"viewWillAppear2");
    
    
}

-(void)viewWillLayoutSubviews{
    
    [super viewWillLayoutSubviews];
    NSLog(@"viewWillLayoutSubviews2");
    
}

-(void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    NSLog(@"viewDidLayoutSubviews2");
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    NSLog(@"viewDidAppear2");
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    NSLog(@"viewWillDisappear2");
    
}

-(void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    NSLog(@"viewDidDisappear2");
}
- (IBAction)btn2Clicked:(id)sender {
    self.testFrame2.frame = CGRectMake(100, 100, 300, 300);
    
}


@end
