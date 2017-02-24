//
//  ViewController.m
//  UIScrollView Test
//
//  Created by HanYoungsoo on 2017. 2. 22..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "ViewController.h"
#import "SettingTableViewCell.h"
#import "DetailProfileController.h"
#import "DataCenter.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
@property NSArray *friendArray;
@property NSArray *friendAdmitArray;
@property NSArray *friendSyncArray;
@property NSArray *manageFriendArray;
@property NSDictionary *sections;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.settingTable.delegate = self;
    self.settingTable.dataSource = self;
    
    self.friendArray = @[@"프로필 설정",@"친구 목록 새로고침"];
    self.friendAdmitArray = @[@"친구 추천 허용"];
    self.friendSyncArray = @[@"친구 이름 동기화"];
    self.manageFriendArray = @[@"숨김친구 관리 ",@"차단친구 관리"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    SettingTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"settingProfileCell" forIndexPath:indexPath];
    
    
    if(cell == nil){
        cell = [[SettingTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"settingProfileCell"];
    }
    NSLog(@"%ld", indexPath.section);
    NSLog(@"%ld", indexPath.row);
    switch (indexPath.section) {
        case 0:
            if(indexPath.row ==0 ){
                cell.uiSwitchBtn.tag = 0;
                [cell.uiSwitchBtn addTarget:self action:@selector(switchOFF:) forControlEvents:UIControlEventValueChanged];
                
            }
            else if(indexPath.row == 1){
                cell.uiSwitchBtn.hidden = YES;
                UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(cell.frame.size.width-73,5,60,35)];
                [btn setImage:[UIImage imageNamed:@"Refresh"] forState:UIControlStateNormal];
                [cell addSubview:btn];
                
            }
            cell.textLB.text = self.friendArray[indexPath.row];
            
            break;
        case 1:
            cell.uiSwitchBtn.tag = 1;
            [cell.uiSwitchBtn addTarget:self action:@selector(switchOFF:) forControlEvents:UIControlEventValueChanged];
            cell.textLB.text = self.friendAdmitArray[indexPath.row];
            break;
        case 2:
            cell.uiSwitchBtn.tag = 2;
            [cell.uiSwitchBtn addTarget:self action:@selector(switchOFF:) forControlEvents:UIControlEventValueChanged];
            cell.textLB.text = self.friendSyncArray[indexPath.row];
            break;
        case 3:
            cell.uiSwitchBtn.hidden = YES;
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            cell.textLB.text = self.manageFriendArray[indexPath.row];
            break;
        default:
            break;
    }
    
    
    return cell;
  
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 4;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    switch (section) {
        case 1:
            return @"내 연락처에서 카카오톡을 사용하는 친구를 자동으로 친구목록에 추가합니다.수동으로 추가하려면 새로고침 버튼을 눌러주세요 ";
            break;
        case 2:
            return @"알 수도 있는 친구를 추천받고, 나를 다른사람에게 추천해 줍니다. ";
            break;
        case 3:
            return @"친구 관리";
            break;
        case 0:
            return @" ";
            break;
        default:
            return @" ";
            break;
    }
}


-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    
    switch (section) {
        case 0:
            return 0;
            break;
        case 1:
            return 50;
            break;
        case 2:
            return 30;
            break;
        case 3:
            return 10;
            break;
        default:
            return 0;
            break;
    }
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    NSLog(@"number : %ld", section);
    
    switch (section) {
        case 0:
            return self.friendArray.count;
            break;
        case 1:
            return self.friendAdmitArray.count;
            break;
        case 2:
            return self.friendSyncArray.count;
            break;
        case 3:
            return self.manageFriendArray.count;
            break;
        default:
            return 0;
            break;
    }
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    DetailProfileController *detail = [story instantiateViewControllerWithIdentifier:@"DetailProfileController"];
    
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    if ((indexPath.section == 0) && (indexPath.row == 0)) {
        
        [self.navigationController pushViewController:detail animated:YES];

    }
}
-(void)switchOFF:(UISwitch *)sender{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];

    switch (sender.tag) {
        case 0:
            [userDefaults setObject:@"프로필 설정 불가" forKey:@"profileSetting"];
            NSLog(@"프로필 설정 불가!!");
            break;
        case 1:
            [userDefaults setObject:@"친구 추천 사용안함" forKey:@"admitFriends"];
            NSLog(@"친구 추천 사용안함!!");
            break;
        case 2:
            [userDefaults setObject:@"친구목록 동기화 안함" forKey:@"syncFriends"];
            NSLog(@"친구 목록 동기화 안함!!");
            break;
        default:
            break;
    }
    
    
}



@end
