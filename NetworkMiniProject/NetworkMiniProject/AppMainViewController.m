//
//  AppMainViewController.m
//  NetworkMiniProject
//
//  Created by HanYoungsoo on 2017. 3. 16..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "AppMainViewController.h"
#import "DataCenter.h"
#import "BoardTableViewCell.h"

@interface AppMainViewController () <UITableViewDataSource,UITableViewDelegate, UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIButton *writeBtn;
@property (weak, nonatomic) IBOutlet UITableView *wrttingContensts;
@property (weak, nonatomic) IBOutlet UITableView *contetsTable;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *contentsLoadingIndicator;

@property NSNumber *contentsCount;
@property NSArray *resultArr;
@end

@implementation AppMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    self.resultArr = @[];
    self.contentsCount = 0;
    self.resultArr = [[NSMutableArray alloc] init];
    self.writeBtn.layer.cornerRadius = 25;
    self.writeBtn.layer.masksToBounds = YES;
    NSString *token = [[[DataCenter sharedInstance] userdefaults] objectForKey:@"TOKEN"];
    NSLog(@"%@", token);
    
    [self.contentsLoadingIndicator startAnimating];
    [[[DataCenter sharedInstance] nManager] getPostList:token pageNum:[NSNumber numberWithInt:1] completion:^(BOOL isSuccess, id response) {
        
        if (isSuccess) {
            NSLog(@"%@",response);
            
            NSDictionary * resultDic = response;
            self.contentsCount = [response objectForKey:@"count"];
            self.resultArr = [resultDic objectForKey:@"results"];
            NSLog(@"%@", self.resultArr);
            [self.contentsLoadingIndicator stopAnimating];
            [self.contetsTable reloadData];
        }
        else{
            
            NSLog(@"실패");
        }
        
    }];
    
}

- (IBAction)onLogoutBtn:(UIButton *)sender {
    DataCenter *dataCenter = [DataCenter sharedInstance];
    NSString *token = [dataCenter.userdefaults objectForKey:@"TOKEN"];
    
    [dataCenter.nManager logOut:token completion:^(BOOL isSuccess, id response) {
        if (isSuccess) {
            [self.navigationController popToRootViewControllerAnimated:YES];
            NSString *msg = [response objectForKey:@"detail"];
            [dataCenter.userdefaults removeObjectForKey:@"TOKEN"];
            NSLog(@"%@",msg);
        }
        else{
            NSLog(@"로그아웃 실패");
        }
    }];
    
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    BoardTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BoardTableViewCell" forIndexPath:indexPath];
    
    if (cell == nil) {
        cell = [[BoardTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"BoardTableViewCell"];
    }
    
    if(self.resultArr.count > 0){
        cell.contentsTitle.text = [self.resultArr[indexPath.row] objectForKey:@"title"];
        cell.writter.text = [[self.resultArr[indexPath.row] objectForKey:@"author"] objectForKey:@"username"];

        
        if ([self.resultArr[indexPath.row] objectForKey:@"img_cover"] != [NSNull null]) {
        
            NSData *imgData = [NSData dataWithContentsOfURL:[NSURL URLWithString:[self.resultArr[indexPath.row] objectForKey:@"img_cover"]]];
            
            cell.contentsImg.image = [UIImage imageWithData:imgData];
            
        }
    }
    return cell;
}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{

    NSLog(@"스크롤 끝!");
    [self.contentsLoadingIndicator startAnimating];
    NSString *token = [[[DataCenter sharedInstance] userdefaults] objectForKey:@"TOKEN"];
    [[[DataCenter sharedInstance] nManager] getPostList:token pageNum:[NSNumber numberWithInt:3] completion:^(BOOL isSuccess, id response) {
        
        if (isSuccess) {
            NSLog(@"%@",response);
            NSDictionary * resultDic = response;
            self.contentsCount = [response objectForKey:@"count"];
            self.resultArr = [resultDic objectForKey:@"results"];
            NSLog(@"%@", self.resultArr);
            [self.contentsLoadingIndicator stopAnimating];
            [self.contetsTable reloadData];
        }
        else{
            
            NSLog(@"실패");
        }
        
    }];
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.resultArr.count;
}



@end
