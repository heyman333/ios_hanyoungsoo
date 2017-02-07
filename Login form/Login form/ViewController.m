//
//  ViewController.m
//  Login form
//
//  Created by HanYoungsoo on 2017. 2. 7..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITextFieldDelegate>

@property (nonatomic, strong) UITextField *logIn;
@property (nonatomic, strong) UITextField *pwd;
@property (nonatomic, strong) UILabel *stateLB;
@property (nonatomic, strong) UIScrollView *loginScrollView;
@property (nonatomic, strong) UIPageControl *pageControl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 0, 240, 40)];
    self.pageControl.numberOfPages = 2;
    self.pageControl.currentPage = 1;
    [self.pageControl sizeForNumberOfPages:3];
    
    
    
    CGFloat mainframe_width = self.view.frame.size.width;
    CGFloat mainframe_heifht= self.view.frame.size.height;
    
    
    _loginScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, mainframe_width, mainframe_heifht)];
    
   
    
    [_loginScrollView setContentSize:CGSizeMake(0, mainframe_heifht)];
    UIView *myView1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, mainframe_width, mainframe_heifht)];
    
//    UIView *myView2 = [[UIView alloc] initWithFrame:CGRectMake(0, mainframe_heifht, mainframe_width, mainframe_heifht)];
//    
    

    UILabel *loginLB = [[UILabel alloc] initWithFrame:CGRectMake((mainframe_width/2)-130, 100, 30, 30)];
    
    loginLB.text = @"ID: ";
    
    UILabel *pwdLB = [[UILabel alloc] initWithFrame:CGRectMake((mainframe_width/2)-150,150,50, 30)];
    
    pwdLB.text = @"Pwd :";
    
    UIButton *logInBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    logInBtn.frame = CGRectMake((mainframe_width/2)-120, (mainframe_heifht/2) - 150, 100, 30);
    [logInBtn setTitle:@"Log-in" forState:UIControlStateNormal];
    [logInBtn setBackgroundColor:[UIColor blueColor]];
    
    UIButton *joinBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    joinBtn.frame = CGRectMake((mainframe_width/2)
                               , (mainframe_heifht/ 2) - 150, 100, 30);
    [joinBtn setTitle:@"Join" forState:UIControlStateNormal];
    [joinBtn setBackgroundColor:[UIColor blueColor]];
    
    self.stateLB = [[UILabel alloc] initWithFrame:CGRectMake((mainframe_width/2)-120, (mainframe_heifht/2) - 110, 240, 30)];
    

    self.logIn = [[UITextField alloc] initWithFrame:CGRectMake((mainframe_width/2)-100,100,200,30)];
    self.logIn.borderStyle = UITextBorderStyleRoundedRect;
    self.logIn.placeholder = @"id";
    self.logIn.tag = 100;
    self.logIn.delegate = self;
    

    
    self.pwd = [[UITextField alloc] initWithFrame:CGRectMake((mainframe_width/2)-100,150,200,30)];
    self.pwd.borderStyle = UITextBorderStyleRoundedRect;
    self.pwd.placeholder = @"pwd";
    self.pwd.tag = 200;
    self.pwd.delegate = self;

    
    [myView1 addSubview:self.logIn];
    [myView1 addSubview:self.pwd];
    [myView1 addSubview:loginLB];
    [myView1 addSubview:pwdLB];
    
    [myView1 addSubview:logInBtn];
    [myView1 addSubview:joinBtn];
    [myView1 addSubview:self.stateLB];
    
    [myView1 addSubview:self.pageControl];
    
    [logInBtn addTarget:self action:@selector(logInBtnCliked:) forControlEvents:UIControlEventTouchUpInside];
    
    [_loginScrollView addSubview:myView1];
    
    [self.view addSubview:_loginScrollView];
     _loginScrollView.contentOffset = CGPointMake(0,-250);

}

-(void)textFieldDidBeginEditing:(UITextField *)textField{
    [_loginScrollView setContentOffset:CGPointMake(0,-160) animated:TRUE];
    
}

-(void)textFieldDidEndEditing:(UITextField *)textField{
    [_loginScrollView setContentOffset:CGPointMake(0,-250) animated:TRUE];
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{

    if(textField.tag == 100){
        NSLog(@"100");
        [textField resignFirstResponder];
        [self.pwd becomeFirstResponder];
    }
    else{
        [textField resignFirstResponder];
        
    }

    return YES;
}

-(void)logInBtnCliked:(UIButton *)sender{
    self.stateLB.text = @"등록되지 않은 회원입니다.";
    
    if ([self.logIn.text isEqualToString:@""]) {
        self.stateLB.text = @"아이디를 입력하세요!";
    }
    else if ([self.pwd.text isEqualToString:@""]) {
        self.stateLB.text = @"비밀번호를 입력하세요!";
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
