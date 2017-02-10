//
//  ViewController.m
//  MoringAlgo
//
//  Created by HanYoungsoo on 2017. 2. 10..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITextFieldDelegate>

@property (nonatomic, strong) UITextField *inputTF;
@property (nonatomic, strong) UILabel *outputLB;
@property (nonatomic, strong) UIScrollView *scrollView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat x = self.view.frame.size.width;
    CGFloat y = self.view.frame.size.height;
    
    
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, x, y)];
    self.scrollView.contentSize = CGSizeMake(x, y*2);
  
    self.inputTF = [[UITextField alloc] initWithFrame:CGRectMake((x/2)-100, (y/2)-20, 200, 40)];
    self.inputTF.borderStyle = UITextBorderStyleRoundedRect;
    self.inputTF.placeholder = @"input";
    self.inputTF.delegate=self;
    [self.scrollView addSubview:self.inputTF];
    
    
    self.outputLB = [[UILabel alloc] initWithFrame:CGRectMake(x/2-100, y/2+30, 200, 40)];
    self.outputLB.textColor = [[UIColor blueColor] colorWithAlphaComponent:0.5];
    [self.scrollView addSubview:_outputLB];
    
    [self.view addSubview:self.scrollView];
}

-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    [self.scrollView setContentOffset:CGPointMake(0, 100) animated:YES];
    return YES;
}

-(BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    [self.scrollView setContentOffset:CGPointMake(0, 0) animated:YES];
    return YES;
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    
    if ([textField.text isEqualToString:@""]) {
        self.outputLB.text = @"입력 값 없음";
    }

    else if(([self.inputTF.text length] % 2==0)){
        NSString *temp= [self.inputTF.text substringFromIndex:([self.inputTF.text length]/2)-1];
        self.outputLB.text = [NSString stringWithFormat:@"결과 : %@" , [temp substringToIndex:2]];
    }
    else{
        NSString *temp= [self.inputTF.text substringFromIndex:([self.inputTF.text length]/2)];
        self.outputLB.text = [NSString stringWithFormat:@"결과 : %@" , [temp substringToIndex:1]];
    }
    
    [textField resignFirstResponder];

    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
