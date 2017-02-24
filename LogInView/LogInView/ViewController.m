//
//  ViewController.m
//  LogInView
//
//  Created by HanYoungsoo on 2017. 2. 20..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "ViewController.h"
#import "JoinViewController.h"
#import "DataCenter.h"

@interface ViewController () <UITextFieldDelegate,UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UIView *LoginContainer;
@property (weak, nonatomic) UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UITextField *idTF;
@property (weak, nonatomic) IBOutlet UITextField *pwTF;
@property (weak, nonatomic) IBOutlet UIButton *logInBtn;
@property (weak, nonatomic) IBOutlet UIView *bottomFrame;

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
    [self addObserverMethod];
    [self.view addSubview:scrollView];
    
}

- (void)addObserverMethod{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(noti:) name:@"NotiTest" object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboadNoti:) name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboadNotiHide:) name:UIKeyboardWillHideNotification object:nil];
    
}

-(void)keyboadNoti:(NSNotification *)sender{

    CGSize keysize = [[sender.userInfo objectForKey:UIKeyboardFrameBeginUserInfoKey] CGRectValue].size;
    self.bottomFrame.frame = CGRectMake(0,self.view.frame.size.height - keysize.height-self.bottomFrame.frame.size.height, keysize.width, self.bottomFrame.frame.size.height);
}


-(void)keyboadNotiHide:(NSNotification *)sender{

     CGSize keysize = [[sender.userInfo objectForKey:UIKeyboardFrameBeginUserInfoKey] CGRectValue].size;
    
    self.bottomFrame.frame = CGRectMake(0,self.bottomFrame.frame.origin.y + keysize.height ,self.bottomFrame.frame.size.width, self.bottomFrame.frame.size.height);
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
- (IBAction)onLogInBtn:(UIButton *)sender {
    
    
    UIAlertController *alertController = [UIAlertController
                                          alertControllerWithTitle:@"LoginFail"
                                          message:@"아이디가 없네요ㅠㅠ"
                                          preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertController *alertController2 = [UIAlertController
                                           alertControllerWithTitle:@"LoginFail"
                                           message:@"비밀번호가 없네요 ㅠㅠ"
                                           preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *okAction = [UIAlertAction
                               actionWithTitle:@"OK"
                               style:UIAlertActionStyleDefault
                               handler:nil];;
    
    [alertController addAction:okAction];
    [alertController2 addAction:okAction];
    
    DataCenter *dataCenter = [DataCenter sharedInstance];
    
    NSDictionary *userInfos = [dataCenter getUserinfo];
    
    NSString *userID = [userInfos objectForKey:@"userID"];
    NSLog(@"userID: %@", userID);
    NSString *userPwd = [userInfos objectForKey:@"userPwd"];
    NSLog(@"userPwd: %@", userPwd);
    
    
    
    if((userID!=nil) && (userID == self.idTF.text)){
        NSLog(@"아이디 있음");
        if ((userPwd!=nil) && (userPwd == self.pwTF.text)) {
            NSLog(@"비밀번호 있음");
            UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
            
            UIViewController *mainVC= [story instantiateViewControllerWithIdentifier:@"main"];
            
            [self.navigationController pushViewController:mainVC animated:YES];
        }
        else{
            NSLog(@"비밀번호 없음");
            
            
            [self presentViewController:alertController2 animated:YES completion:nil];
            
        }
    }
    else{
        NSLog(@"아이디 없음");
        [self presentViewController:alertController animated:YES completion:nil];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)noti:(NSNotification *)sender{
    
    NSLog(@"노티를 받았습니다");
    NSLog(@"%@, %@", sender.object ,sender.userInfo);
    
}

@end
