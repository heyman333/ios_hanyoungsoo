//
//  ViewController.m
//  MySevenTeenthIosStudy
//
//  Created by HanYoungsoo on 2017. 2. 7..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) NSArray *animals;
@property (nonatomic, strong) NSArray *animals_leg;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGFloat x = self.view.frame.size.width;
    CGFloat y = self.view.frame.size.height;
    
    self.animals = @[@"dog",@"snake",@"cat",@"elf",@"human",@"name",@"name2",@"name3",@"dname",@"snakkee",@"catcacaca",@"elflll"];
    self.animals_leg = @[@4,@4,@4,@4,@4,@4,@4,@2,@4,@2,@2,@5,];
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0,10,x,y) style:UITableViewStylePlain];
    tableView.dataSource = self;
    tableView.delegate = self;
    [self.view addSubview:tableView];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@", [self.animals objectAtIndex:indexPath.row]];
    
    cell.textLabel.font = [UIFont systemFontOfSize:20.5];
    
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@",[self.animals_leg objectAtIndex:indexPath.row]];
    cell.detailTextLabel.font = [UIFont systemFontOfSize:13.5];
    
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return 12;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 65;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
