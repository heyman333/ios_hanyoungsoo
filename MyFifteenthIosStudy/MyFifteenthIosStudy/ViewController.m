//
//  ViewController.m
//  MyFifteenthIosStudy
//
//  Created by HanYoungsoo on 2017. 2. 6..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITextFieldDelegate>
@property (nonatomic, strong) UITextField *tf;
@property (nonatomic, strong) UITextField *tf2;
@property (nonatomic, strong) UILabel *textLb;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _tf = [[UITextField alloc] initWithFrame:CGRectMake(40, 20, 180, 35)];
    _tf.borderStyle = UITextBorderStyleRoundedRect;
    _tf.placeholder = @"여기에 입력해주세요";
    _tf.delegate = self;
    _tf.textColor = [UIColor blueColor];
    _tf.tag = 100;
    
    _tf2 = [[UITextField alloc] initWithFrame:CGRectMake(40, 75, 180, 35)];
    _tf2.borderStyle = UITextBorderStyleRoundedRect;
    _tf2.placeholder = @"여기에 입력해주세요";
    _tf2.delegate = self;
    _tf2.textColor = [UIColor blueColor];
    _tf2.tag = 200;

    _textLb = [[UILabel alloc] initWithFrame:CGRectMake(40, 120, 300, 35)];
    _textLb.text = @"";
    _textLb.textColor = [UIColor blackColor];
    
    
    [self.view addSubview:_tf];
    [self.view addSubview:_tf2];
    [self.view addSubview:_textLb];
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if(textField.tag == 100){
        NSLog(@"첫번쨰 텍스트필드");
        [textField resignFirstResponder];
        [_tf2 becomeFirstResponder];
        _textLb.text = textField.text;
    }
    else if(textField.tag == 200){
        [textField resignFirstResponder];
    }

    return YES;
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{

    self.textLb.text = [self.textLb.text stringByAppendingString:string];
    
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
