//
//  ViewController.m
//  DataSave Practice
//
//  Created by HanYoungsoo on 2017. 3. 3..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "ViewController.h"
#import "DataCenter.h"
@interface ViewController ()
<UITableViewDelegate,UITableViewDataSource>
@property NSArray *phoneArr;
@property NSMutableArray *mutableArr;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    DataCenter *datacenter = [DataCenter sharedInstance];
//    self.phoneArr = [datacenter fileLoad];
    
    MyEnum myEnum = MyEnumValueA;
    myEnum = MyEnumValueB;
    NSLog(@"%ld" , myEnum);
    
    

}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    DataCenter *datacenter = [DataCenter sharedInstance];
    self.phoneArr = [datacenter fileLoad];
    [self.myTable reloadData];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"];
    }
    
    cell.textLabel.text = [self.phoneArr[indexPath.row] objectForKey:@"name"];
    cell.detailTextLabel.text = [self.phoneArr[indexPath.row] objectForKey:@"phone"];

    
    return cell;
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.phoneArr.count;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
