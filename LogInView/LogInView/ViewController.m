//
//  ViewController.m
//  LogInView
//
//  Created by HanYoungsoo on 2017. 2. 20..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "ViewController.h"
#import "JoinViewController.h"

@interface ViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UIView *LoginContainer;
@property (weak, nonatomic) UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UITextField *idTF;
@property (weak, nonatomic) IBOutlet UITextField *pwTF;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    
    self.scrollView = scrollView;
    self.idTF.delegate = self;
    self.pwTF.delegate = self;



    [scrollView setContentSize:CGSizeMake(self.view.frame.size.width, self.view.frame.size.height)];

    [scrollView addSubview:self.LoginContainer];
    
    [self.view addSubview:scrollView];
    
}
- (IBAction)onnJoinBtn:(UIButton *)sender {
    
    UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *joinVC = [story instantiateViewControllerWithIdentifier:@"JoinViewController"];
    

    [self.navigationController pushViewController:joinVC animated:YES];
}


-(void)textFieldDidBeginEditing:(UITextField *)textField{
    [self.scrollView setContentOffset:CGPointMake(0, 60) animated:YES];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    [textField resignFirstResponder];
    [self.scrollView setContentOffset:CGPointMake(0,0) animated:YES];
    
    return YES;

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
