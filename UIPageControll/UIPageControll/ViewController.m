//
//  ViewController.m
//  UIPageControll
//
//  Created by HanYoungsoo on 2017. 2. 7..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UIPageViewControllerDelegate>


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat maxFrame_width = self.view.frame.size.width;
    CGFloat maxFrame_height = self.view.frame.size.height;
    
    
    UISwitch *mySwitch = [[UISwitch alloc] initWithFrame:CGRectMake((maxFrame_width/2)-30, (maxFrame_height/2)-20, 200, 30)];

    NSArray *lastName = @[@"han",@"choi",@"kim",@"chun"];
    UISegmentedControl *segmentCon = [[UISegmentedControl alloc] initWithItems:lastName];
    segmentCon.frame = CGRectMake((maxFrame_width/2)-175, 20, 350, 35);
    
    UIPageControl *onBoardImagePageControl = [[UIPageControl alloc] initWithFrame:CGRectMake((maxFrame_width / 2)-100,(maxFrame_height)-40, 200, 40)];

    onBoardImagePageControl.currentPage = 0;
    onBoardImagePageControl.numberOfPages = 10;
    [onBoardImagePageControl setPageIndicatorTintColor:[UIColor blackColor]];
    [self.view addSubview:onBoardImagePageControl];
    [self.view addSubview:mySwitch];
    [self.view addSubview:segmentCon];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
