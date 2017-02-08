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
@property (nonatomic, strong) UIButton *logInBtn;
@property (nonatomic, strong) UIButton *logOutBtn;
@property CGFloat mainframe_width;
@property CGFloat mainframe_heifht;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 0, 240, 40)];
    self.pageControl.numberOfPages = 2;
    self.pageControl.currentPage = 1;
    [self.pageControl sizeForNumberOfPages:3];
    
    
    
    self.mainframe_width = self.view.frame.size.width;
    self.mainframe_heifht= self.view.frame.size.height;
    
    
    _loginScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, _mainframe_width, _mainframe_heifht)];
    
   
    
    [_loginScrollView setContentSize:CGSizeMake(0, _mainframe_heifht)];
    UIView *myView1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, _mainframe_width, _mainframe_heifht)];
    
//    UIView *myView2 = [[UIView alloc] initWithFrame:CGRectMake(0, mainframe_heifht, mainframe_width, mainframe_heifht)];
//    
    

    UILabel *loginLB = [[UILabel alloc] initWithFrame:CGRectMake((_mainframe_width/2)-155, 100, 50, 30)];
    
    loginLB.text = @"ID : ";
    loginLB.textAlignment = 2;
    
    UILabel *pwdLB = [[UILabel alloc] initWithFrame:CGRectMake((_mainframe_width/2)-155,150,50, 30)];
    
    pwdLB.text = @"Pwd :";
    pwdLB.textAlignment = 2;
    
    
    self.logOutBtn = [[UIButton alloc] initWithFrame:CGRectMake((_mainframe_width/2)-50,(_mainframe_heifht/2) + 220, 240, 30)];
    
    self.logOutBtn.hidden = YES;
    
    [_logOutBtn setTitle:@"Logout" forState:UIControlStateNormal];
    _logOutBtn.backgroundColor = [UIColor redColor];
    
    
    self.logInBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    _logInBtn.frame = CGRectMake((_mainframe_width/2)-120, (_mainframe_heifht/2) - 150, 100, 30);
    [_logInBtn setTitle:@"Log-in" forState:UIControlStateNormal];
    [_logInBtn setBackgroundColor:[UIColor blueColor]];
    
    UIButton *joinBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    joinBtn.frame = CGRectMake((_mainframe_width/2)
                               , (_mainframe_heifht/ 2) - 150, 100, 30);
    [joinBtn setTitle:@"Join" forState:UIControlStateNormal];
    [joinBtn setBackgroundColor:[UIColor blueColor]];
    
    self.stateLB = [[UILabel alloc] initWithFrame:CGRectMake((_mainframe_width/2)-120, (_mainframe_heifht/2) - 110, 240, 30)];
    

    self.logIn = [[UITextField alloc] initWithFrame:CGRectMake((_mainframe_width/2)-100,100,200,30)];
    self.logIn.borderStyle = UITextBorderStyleRoundedRect;
    self.logIn.placeholder = @"id";
    self.logIn.tag = 100;
    self.logIn.delegate = self;
    

    
    self.pwd = [[UITextField alloc] initWithFrame:CGRectMake((_mainframe_width/2)-100,150,200,30)];
    self.pwd.borderStyle = UITextBorderStyleRoundedRect;
    self.pwd.placeholder = @"pwd";
    self.pwd.tag = 200;
    self.pwd.delegate = self;

    
    [myView1 addSubview:self.logIn];
    [myView1 addSubview:self.pwd];
    [myView1 addSubview:loginLB];
    [myView1 addSubview:pwdLB];
    
    [myView1 addSubview:_logInBtn];
    [myView1 addSubview:self.logOutBtn];
    [myView1 addSubview:joinBtn];
    [myView1 addSubview:self.stateLB];
    
    [myView1 addSubview:self.pageControl];
    
    [_logInBtn addTarget:self action:@selector(logInBtnCliked:) forControlEvents:UIControlEventTouchUpInside];
    
    
    [_loginScrollView addSubview:myView1];
    
    [self.view addSubview:_loginScrollView];
     _loginScrollView.contentOffset = CGPointMake(0,-250);
    
    [_logOutBtn addTarget:self action:@selector(logOutBtnClicked:) forControlEvents:UIControlEventTouchUpInside];

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
        [self.logInBtn sendActionsForControlEvents:UIControlEventTouchUpInside];
        
        
    }

    return YES;
}

-(void)logInBtnCliked:(UIButton *)sender{
    
    if ([self.logIn.text isEqualToString:@""]) {
        self.stateLB.text = @"아이디를 입력하세요!";
    }
    else if ([self.pwd.text isEqualToString:@""]) {
        self.stateLB.text = @"비밀번호를 입력하세요!";
    }
    else if ([self.logIn.text isEqualToString:@"heyman333"] && [self.pwd.text isEqualToString:@"1234"]){
        self.stateLB.text = @"환영합니다!";
        [_loginScrollView setContentOffset:CGPointMake(0,250) animated:TRUE];
        self.stateLB.frame = CGRectMake((_mainframe_width/2)-100,(_mainframe_heifht/2), 240, 30);
        self.logOutBtn.hidden = NO;

    }
    else{
        self.stateLB.text = @"등록되지 않은 회원입니다.";
    }
}

-(void)logOutBtnClicked:(UIButton *)sender{
    [_loginScrollView setContentOffset:CGPointMake(0,-250) animated:TRUE];
    self.logOutBtn.hidden = YES;
    self.stateLB.text = @"로그아웃 됐습니다";
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
