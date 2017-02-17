//
//  ViewController.m
//  UITableView
//
//  Created by HanYoungsoo on 2017. 2. 15..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *myTable;
@property (strong, nonatomic) NSArray *animals;
@property (strong, nonatomic) NSArray *animals2;
@property (nonatomic) NSArray *sectionNames;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.myTable.delegate = self;
    self.myTable.dataSource = self;
    //에버랜드
    NSDictionary *animal1 = @{@"name":@"bear",@"img":@"bear.jpg"};
    NSDictionary *animal2 = @{@"name":@"dog",@"img":@"dog.jpg"};
    NSDictionary *animal3 = @{@"name":@"lion",@"img":@"lion.jpg"};
    NSDictionary *animal4 = @{@"name":@"emu",@"img":@"emu.jpg"};
    NSDictionary *animal5 = @{@"name":@"panda",@"img":@"panda.jpg"};
    
    //롯데월드
    NSDictionary *animal6 = @{@"name":@"duck",@"img":@"duck.jpg"};
    NSDictionary *animal7 = @{@"name":@"whale",@"img":@"whale.jpg"};
    NSDictionary *animal8 = @{@"name":@"horse",@"img":@"horse.jpg"};
    NSDictionary *animal9 = @{@"name":@"wombat",@"img":@"wombat.jpg"};
    NSDictionary *animal10 = @{@"name":@"seagull",@"img":@"seagull.jpg"};
    
    
    self.animals = @[animal1,animal2,animal3,animal4,animal5];
    self.animals2 = @[animal6,animal7,animal8,animal9,animal10];

    self.sectionNames = @[@"EverLand", @"LotteWorld"];

}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    
    UIImage *img;
    NSLog(@"section : %ld", indexPath.section);
    switch (indexPath.section) {
        case 0:
            cell.textLabel.text = [self.animals[indexPath.row] objectForKey:@"name"];
            img = [UIImage imageNamed:[self.animals[indexPath.row] objectForKey:@"img"]];
            cell.imageView.image = img;
            break;
        case 1:
            cell.textLabel.text = [self.animals2[indexPath.row] objectForKey:@"name"];
            img = [UIImage imageNamed:[self.animals2[indexPath.row] objectForKey:@"img"]];
            cell.imageView.image = img;
            break;
        default:
            break;
    }

    return cell;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.animals.count;
    
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 60;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    
    return 30;
}

//- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
//    
//    UILabel *myLabel = [[UILabel alloc] init];
//    myLabel.frame = CGRectMake(10, 8, 320, 20);
//    myLabel.font = [UIFont boldSystemFontOfSize:18];
//    myLabel.text = [self tableView:tableView titleForHeaderInSection:section];
//    
//    UIView *headerView = [[UIView alloc] init];
//    [headerView addSubview:myLabel];
//    
//    return headerView;
//}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    
    return 0;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    

    
    UITableViewCell * selectedCell = [tableView cellForRowAtIndexPath:indexPath];
    NSLog(@"%@",selectedCell.textLabel.text);
    [tableView deselectRowAtIndexPath:indexPath animated:NO];

}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{

    return self.sectionNames.count;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    
    switch (section) {
        case 0:
            return self.sectionNames[section];
            break;
        case 1:
            return self.sectionNames[section];
            break;
        default:
            return @"";
            break;
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
