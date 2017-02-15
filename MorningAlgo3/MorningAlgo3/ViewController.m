//
//  ViewController.m
//  MorningAlgo3
//
//  Created by HanYoungsoo on 2017. 2. 15..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITextFieldDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.inputText.delegate = self;

    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    [textField resignFirstResponder];
    NSInteger num = [self.inputText.text integerValue];
    NSInteger sum = 0;
    
    for(NSInteger i = 1 ; i <= num ; i++){
        if((num % i) == 0 )
            sum +=i;
    }
    NSNumber *numberObj = [NSNumber numberWithInteger:sum];
    
    self.outputLabel.text = [numberObj stringValue];
    
    return YES;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
