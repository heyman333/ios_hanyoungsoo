//
//  TableViewController.m
//  StoryBoardPractice
//
//  Created by HanYoungsoo on 2017. 2. 27..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "TableViewController.h"
#import "CustomTableViewCell.h"

@interface TableViewController () <UITableViewDelegate,UITableViewDataSource>
@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    CustomTableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    if(cell == nil){
        cell = [[CustomTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    
    }
    
    cell.textLB.text = @"하이";
    
    return cell;
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 3;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}
- (IBAction)onBtnClick:(UIButton *)sender {
    
    NSLog(@"버튼이 눌렸습니다.");
}




@end
