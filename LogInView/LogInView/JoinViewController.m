//
//  JoinViewController.m
//  LogInView
//
//  Created by HanYoungsoo on 2017. 2. 20..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "JoinViewController.h"
#import "DataCenter.h"

@interface JoinViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UIView *joinForm;
@property (weak, nonatomic) IBOutlet UITextField *idLB;
@property (weak, nonatomic) IBOutlet UITextField *pwLB;
@property (weak, nonatomic) IBOutlet UITextField *pw2LB;

@property (weak, nonatomic)UIScrollView *scrollView;


@end

@implementation JoinViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIScrollView * scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [scrollView setContentSize:CGSizeMake(self.view.frame.size.width, self.view.frame.size.height)];
    [scrollView addSubview:self.joinForm];
    
    [self.view addSubview:scrollView];
    
    self.scrollView = scrollView;
    
    self.idLB.delegate = self;
    self.pwLB.delegate = self;
    self.pw2LB.delegate = self;
    
    
}
- (IBAction)onConfirmBtn:(UIButton *)sender {
    DataCenter *dataCenter = [DataCenter sharedInstance];
    [dataCenter savaID:self.idLB.text pwd:self.pw2LB.text];
    NSLog(@"정보가 저장됩니다.");
    [[NSNotificationCenter defaultCenter] postNotificationName:@"NotiTest" object:@"hi!" userInfo:@{@"name":@"HAN YoungSoo"}];

    [self.navigationController popViewControllerAnimated:YES];
}
-(void)textFieldDidBeginEditing:(UITextField *)textField{
    
    [self.scrollView setContentOffset:CGPointMake(0, 110) animated:YES];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    [textField resignFirstResponder];
    
    [self.scrollView setContentOffset:CGPointMake(0, 0) animated:YES];
    
    return YES;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:@"NotiTest"];
}


@end
