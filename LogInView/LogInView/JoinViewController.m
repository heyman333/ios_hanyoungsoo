//
//  JoinViewController.m
//  LogInView
//
//  Created by HanYoungsoo on 2017. 2. 20..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "JoinViewController.h"

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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
