//
//  ViewController.m
//  CustomCell
//
//  Created by HanYoungsoo on 2017. 2. 17..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "ViewController.h"
#import "LectureContentsCell.h"
@interface ViewController ()
<UITableViewDataSource,UITableViewDelegate>
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.lectureContentsTable.delegate = self;
    self.lectureContentsTable.dataSource = self;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    LectureContentsCell *cell = [tableView dequeueReusableCellWithIdentifier:@"LectureCell" forIndexPath:indexPath];
    
    if(cell == nil){
        cell = [[LectureContentsCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"LectureCell"];
    }
    
    cell.lectureImg.image = [UIImage imageNamed:@"lecImg"];
    cell.lectureTtitle.text = @"iOS10 - 스위프트로 배워요!";
    cell.lecturePersonNum.text = @"30";
    cell.lectureReputaionNum.text =@"(12 수강평)";
    cell.lectureGrade.image = [UIImage imageNamed:@"star"];
    
    return cell;
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 1;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
