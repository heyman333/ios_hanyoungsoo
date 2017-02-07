//
//  ViewController.m
//  MySixteenthIosStudy
//
//  Created by HanYoungsoo on 2017. 2. 7..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UIScrollViewDelegate>
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat mainFrame_width = self.view.frame.size.width;
    CGFloat mainFrame_height = self.view.frame.size.height;
    
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, mainFrame_width, mainFrame_height)];
    
    [scrollView setContentSize:CGSizeMake(scrollView.frame.size.width*2,mainFrame_height*2)];
    scrollView.delegate = self;
    scrollView.pagingEnabled= YES;
    scrollView.bounces = YES;
    
    
    
    [self.view addSubview:scrollView];
    
    UIView *newView1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, mainFrame_width, mainFrame_height)];
    UIView *newView2 = [[UIView alloc] initWithFrame:CGRectMake(mainFrame_width,0, mainFrame_width, mainFrame_height)];
    
    UIView *newView3 = [[UIView alloc] initWithFrame:CGRectMake(0, mainFrame_height, mainFrame_width, mainFrame_height)];
    UIView *newView4 = [[UIView alloc] initWithFrame:CGRectMake(mainFrame_width,mainFrame_height, mainFrame_width, mainFrame_height)];
    
    [newView1 setBackgroundColor:[UIColor redColor]];
    [newView2 setBackgroundColor:[UIColor blueColor]];
    [newView3 setBackgroundColor:[UIColor blueColor]];
    [newView4 setBackgroundColor:[UIColor redColor]];
    
    
    UIImageView *firstImg = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, newView1.frame.size.width, newView1.frame.size.height)];
    
    firstImg.image = [UIImage imageNamed:@"1604271325147270.jpg"];
    [newView1 addSubview:firstImg];
    
    UIImageView *foruthImg = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, newView1.frame.size.width, newView1.frame.size.height)];
    foruthImg.image = [UIImage imageNamed:@"stacj.jpg"];
    [newView4 addSubview:foruthImg];


    [scrollView addSubview:newView1];
    [scrollView addSubview:newView2];
    [scrollView addSubview:newView3];
    [scrollView addSubview:newView4];
    
}


-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    NSLog(@"드래깅 되었습니다.");
}

-(void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView{
    NSLog(@"scrollViewWillBeginDecelerating");
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
