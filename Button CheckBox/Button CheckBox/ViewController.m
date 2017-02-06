//
//  ViewController.m
//  Button CheckBox
//
//  Created by HanYoungsoo on 2017. 2. 6..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UIButton *btn;
@property (nonatomic, strong) UIButton *btn2;
@property (nonatomic, strong) UIButton *btn3;
@property (nonatomic, strong) UIButton *btn4;
@property (nonatomic, strong) UIImage *btnImg;
@end

@implementation ViewController

- (void)viewDidLoad {
    
    self.btnImg = [UIImage imageNamed:@"checkbox.png"];
    
    self.btn = [[UIButton alloc] initWithFrame:CGRectMake(20, 20, 120, 50)];
    [self.btn setTitle:@"1번 버튼" forState:UIControlStateNormal];
    [self.btn setBackgroundColor:[UIColor purpleColor]];
    self.btn.layer.cornerRadius=3.5;
    self.btn.layer.masksToBounds=true;
    [self.view addSubview:self.btn];
    
    self.btn2 = [[UIButton alloc] initWithFrame:CGRectMake(150,20, 120, 50)];
    [self.btn2 setTitle:@"2번 버튼" forState:UIControlStateNormal];
    [self.btn2 setBackgroundColor:[UIColor  purpleColor]];
    self.btn2.layer.cornerRadius=3.5;
    self.btn2.layer.masksToBounds=true;
    [self.view addSubview:self.btn2];
    
    self.btn3 = [[UIButton alloc] initWithFrame:CGRectMake(20, 80, 120, 50)];
    [self.btn3 setTitle:@"3번 버튼" forState:UIControlStateNormal];
    [self.btn3 setBackgroundColor:[UIColor  purpleColor]];
    self.btn3.layer.cornerRadius=3.5;
    self.btn3.layer.masksToBounds=true;
    [self.view addSubview:self.btn3];
    
    self.btn4 = [[UIButton alloc] initWithFrame:CGRectMake(150,80, 120, 50)];
    [self.btn4 setTitle:@"4번 버튼" forState:UIControlStateNormal];
    [self.btn4 setBackgroundColor:[UIColor  purpleColor]];
    self.btn4.layer.cornerRadius=3.5;
    self.btn4.layer.masksToBounds=true;
    [self.view addSubview:self.btn4];
    
    
    [self.btn addTarget:self action:@selector(btnCliked:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.btn2 addTarget:self action:@selector(btnCliked:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.btn3 addTarget:self action:@selector(btnCliked:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.btn4 addTarget:self action:@selector(btnCliked:) forControlEvents:UIControlEventTouchUpInside];
    
}
-(void)btnCliked:(UIButton *)sender{
    
    if([sender.currentTitle isEqualToString:@"1번 버튼"]){
        
        [self.btn2 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [self.btn3 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [self.btn4 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        
        if([sender currentTitleColor] == [UIColor redColor]){
            [sender setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        }
        else{
            [sender setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        }
    }
    else if([sender.currentTitle isEqualToString:@"2번 버튼"]){
        
        [self.btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [self.btn3 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [self.btn4 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        
        if([sender currentTitleColor] == [UIColor redColor]){
            [sender setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        }
        else{
            [sender setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        }
        
        
    }
    else if([sender.currentTitle isEqualToString:@"3번 버튼"]){
        
        [self.btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [self.btn2 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [self.btn4 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        
        if([sender currentTitleColor] == [UIColor redColor]){
            [sender setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        }
        else{
            [sender setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        }
        
    }
        else if([sender.currentTitle isEqualToString:@"4번 버튼"]){
            
            [self.btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            [self.btn2 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            [self.btn3 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            
            if([sender currentTitleColor] == [UIColor redColor]){
                [sender setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            }
            else{
                [sender setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
                
            }
            
        }
    }



@end
