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
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGFloat x = self.view.frame.size.width;
    CGFloat y = self.view.frame.size.height;
    
    self.animals = @[@"dog",@"snake",@"cat",@"elf",@"human",@"name",@"name2",@"name3",@"dname",@"snakkee",@"catcacaca",@"elflll"];
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0,10,x,y) style:UITableViewStylePlain];
    tableView.dataSource = self;
    tableView.delegate = self;
    [self.view addSubview:tableView];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@", [self.animals objectAtIndex:indexPath.row]];
    cell.textLabel.font = [UIFont systemFontOfSize:40.5];
    
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return 12;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 80;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
