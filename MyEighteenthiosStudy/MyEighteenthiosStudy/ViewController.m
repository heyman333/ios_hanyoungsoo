//
//  ViewController.m
//  MyEighteenthiosStudy
//
//  Created by HanYoungsoo on 2017. 2. 9..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()
<UITextFieldDelegate>
@property (nonatomic, strong) UITextField *inputText;
@property (nonatomic, strong) UILabel *stateLB;
@property CGFloat mainWidth;
@property CGFloat mainHeight;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.mainWidth = self.view.frame.size.width;
    self.mainHeight = self.view.frame.size.height;
    
    self.inputText = [[UITextField alloc] initWithFrame:CGRectMake((_mainWidth/2)-100,(_mainHeight/2)-30 , 200,50)];
    self.inputText.placeholder = @"Input nums split by ,";
    self.inputText.borderStyle = UITextBorderStyleRoundedRect;
    _inputText.delegate = self;
    
    self.stateLB = [[UILabel alloc] initWithFrame:CGRectMake((_mainWidth/2)-100,(_mainHeight/2)+30,200, 50)];
    self.stateLB.text = @"";
    
    [self.view addSubview:self.inputText];
    [self.view addSubview:self.stateLB];
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    [textField resignFirstResponder];
    
    NSArray *list = [self.inputText.text componentsSeparatedByString:@","];
    
    NSMutableArray *mlist = [[NSMutableArray alloc] init];
    
    
    for (NSString *temp in list) {
        if (![mlist containsObject:temp]) {
            [mlist addObject:temp];
        }
    }
    [_stateLB setText:@""];
    for (NSString *temp in mlist) {
        [_stateLB setText:[_stateLB.text stringByAppendingString:[NSString stringWithFormat:@"%@ / ", temp]]];
    }

    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
