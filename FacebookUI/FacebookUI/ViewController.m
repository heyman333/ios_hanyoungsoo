//
//  ViewController.m
//  FacebookUI
//
//  Created by HanYoungsoo on 2017. 3. 6..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "ViewController.h"
#import "FaceBookUITableViewCell.h"

@interface ViewController ()
<UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    FaceBookUITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FacebookUICell" forIndexPath:indexPath];
    
    
    
    
    
    return cell;

}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    
    return  10;
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
