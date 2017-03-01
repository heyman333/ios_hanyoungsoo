//
//  TextViewController.m
//  AutoLayout
//
//  Created by HanYoungsoo on 2017. 2. 28..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "TextViewController.h"

@interface TextViewController ()
@property (weak, nonatomic) IBOutlet UILabel *textLB;

@end

@implementation TextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.textLB.text= @"efijoijfoeijfoiejfeoijoeieoifjwoijfoejfowejfoewjfioewijfoweifjeowifijewoifjweofjweofjweofjweofjweofjweofjweofjweofjweofjweofjweofjweofjweofjweofjweofjweofjweofjweofeoijoeieoifjwoijfoejfowejfoewjfioewijfoweifjeowifijewoifjweofjweofjweofjweofjweofjweoffeoijoeieoifjwoijfoejfowejfoewjfioewijfoweifjeowifijewoifjweofjweofjweofjweofjweofjweof";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
