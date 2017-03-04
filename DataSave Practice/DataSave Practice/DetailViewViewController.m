//
//  DetailViewViewController.m
//  DataSave Practice
//
//  Created by HanYoungsoo on 2017. 3. 3..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "DetailViewViewController.h"
#import "DataCenter.h"

@interface DetailViewViewController ()
@property NSMutableArray *mutableArr;
@end

@implementation DetailViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
       self.mutableArr = [[NSMutableArray alloc] init];
    
    
}
- (IBAction)addFriends:(UIBarButtonItem *)sender {
    
    NSLog(@"입력성공");
    DataCenter *datacenter = [DataCenter sharedInstance];
    [datacenter fileSave:self.nameLB.text phone:self.phoneNumLB.text];
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
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
