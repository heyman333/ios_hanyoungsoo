//
//  ViewController.m
//  Morining Algo
//
//  Created by HanYoungsoo on 2017. 2. 13..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *inputText;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (weak, nonatomic) IBOutlet UITextField *textFeild;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.inputText.delegate = self;

    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    
    NSString *numberString = self.inputText.text;
    NSInteger sum = 0 ;
    
    for(NSInteger i=0 ; i<[numberString length] ; i++){
        
        NSString *temp = [numberString substringWithRange:NSMakeRange(i,1)];
        NSInteger tempNum = [temp integerValue];
        sum+=tempNum;
        
    }
    
    NSNumber *result = [NSNumber numberWithFloat:[numberString integerValue] / (CGFloat)sum];
    NSString *floatNumString =  [result stringValue];
    NSArray *floatArray = [floatNumString componentsSeparatedByString:@"."];
    
    if (floatArray.count > 1) {
        self.resultLabel.text =  @"NOT hardson number!";
    }
    else{
        self.resultLabel.text =  @"hardson number!";
    }
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
