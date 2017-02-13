//
//  ViewController.m
//  Application Life Cycle
//
//  Created by HanYoungsoo on 2017. 2. 13..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *frameTestView;

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

-(void)loadView{
    [super loadView];
    
    NSLog(@"---------------");
    NSLog(@"loadView");

}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSLog(@"viewWillAppear");

    
}

-(void)viewWillLayoutSubviews{
    
    [super viewWillLayoutSubviews];
    
    NSLog(@"viewWillLayoutSubviews");
    
}

-(void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    
    NSLog(@"viewDidLayoutSubviews");
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    NSLog(@"viewDidAppear");
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    NSLog(@"viewWillDisappear");
    
}

-(void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    NSLog(@"viewDidDisappear");
}
- (IBAction)btnClicked:(id)sender {
    self.frameTestView.frame = CGRectMake(10, 20, 300, 200);
}


@end
