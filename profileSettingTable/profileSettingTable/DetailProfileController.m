//
//  DetailProfileController.m
//  profileSettingTable
//
//  Created by HanYoungsoo on 2017. 2. 23..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "DetailProfileController.h"
#import "DataCenter.h"
@interface DetailProfileController ()
<UITableViewDelegate,UITableViewDataSource>
@property NSArray *tableArr;

@end

@implementation DetailProfileController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.profileImage.layer.cornerRadius = 75;
    self.profileImage.layer.masksToBounds = YES;
    self.table.delegate = self;
    self.table.dataSource = self;
    self.backImg.image = [UIImage imageNamed:@"profile"];
    
    if (!UIAccessibilityIsReduceTransparencyEnabled()) {
        self.backImg.backgroundColor = [UIColor clearColor];
        
        UIBlurEffect *blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleDark];
        UIVisualEffectView *blurEffectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
        blurEffectView.frame = self.backImg.bounds;
        blurEffectView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        [self.backImg addSubview:blurEffectView];
        [self.backImg setAlpha:0.8];
    } else {
        self.backImg.backgroundColor = [UIColor blackColor];
    }
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];

    NSDictionary *name = @{@"1":@"Name",@"2":@"한영수"};
    NSDictionary *age = @{@"1":@"Age", @"2":@"27"};
    NSDictionary *laptap = @{@"1":@"labtap",@"2":@"MacBook Pro"};
    NSDictionary *occupation = @{@"1":@"Occupation:",@"2":@"iOS developer"};
    NSDictionary *project = @{@"1":@"project:",@"2":@"CalssManager"};

    if([userDefaults objectForKey:@"profileSetting"] == nil){
        NSLog(@"프로필 설정 가능");
        [userDefaults setObject:@"프로필 설정 불가" forKey:@"profileSetting"];
    }
    if([userDefaults objectForKey:@"admitFriends"] == nil){
        NSLog(@"친구 추천 가능");
        [userDefaults setObject:@"친구 추천 가능" forKey:@"admitFriends"];
        
    }
    if([userDefaults objectForKey:@"syncFriends"] == nil){
        NSLog(@"친구 이름 동기화");
        [userDefaults setObject:@"친구 이름 동기화" forKey:@"syncFriends"];
    }

    NSDictionary *profileSetting = @{@"1":@"프로필 설정 여부:", @"2":[userDefaults objectForKey:@"profileSetting"]};
    NSDictionary *admitFriend = @{@"1":@"친구 추천 허용 여부:",@"2":[userDefaults objectForKey:@"admitFriends"]};
    NSDictionary *feirndSync = @{@"1":@"친구 이름 동기화:",@"2":[userDefaults objectForKey:@"syncFriends"]};

    self.profileImage.image =[UIImage imageNamed:@"profile"];
    self.tableArr = @[name, age, laptap, occupation, project, profileSetting, admitFriend, feirndSync];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.tableArr.count;
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"];
    }
   
    cell.textLabel.text = [self.tableArr[indexPath.row] objectForKey:@"1"];
    cell.detailTextLabel.text = [self.tableArr[indexPath.row] objectForKey:@"2"];
    
    
    return cell;
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES];
    
}

@end
