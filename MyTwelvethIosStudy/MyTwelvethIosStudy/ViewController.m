//
//  ViewController.m
//  MyTwelvethIosStudy
//
//  Created by HanYoungsoo on 2017. 2. 3..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //    UIView *myView = [[UIView alloc]initWithFrame:CGRectMake(0, 0,self.view.frame.size.width, 64)];
    //    [myView setBackgroundColor:[UIColor redColor]];
    //
    //    UIView *myView2 = [[UIView alloc]initWithFrame:CGRectMake(0, 64, self.view.frame.size.width,self.view.frame.size.height - 112)];
    //    [myView2 setBackgroundColor:[UIColor blueColor]];
    //
    //    UIView *myView3 = [[UIView alloc]initWithFrame:CGRectMake(0, self.view.frame.size.height - 48, self.view.frame.size.width,48)];
    //    [myView3 setBackgroundColor:[UIColor brownColor]];
    //
    //
    //    [self.view addSubview:myView];
    //    [self.view addSubview:myView2];
    //    [self.view addSubview:myView3];
    //
    
    //    UIView *myView = [[UIView alloc]initWithFrame:CGRectMake((self.view.frame.size.width/2)-40, (self.view.frame.size.height / 2)  - 40 , 80, 80)];
    //
    //    UIView *myView2 = [[UIView alloc]initWithFrame:CGRectMake((self.view.frame.size.width/2)-40 - 10 , (self.view.frame.size.height / 2)  - 40 , 10, 90)];
    //    [myView2 setBackgroundColor:[UIColor blueColor]];
    //
    //    UIView *myView3 = [[UIView alloc]initWithFrame:CGRectMake((self.view.frame.size.width/2)-40 - 10 , (self.view.frame.size.height / 2) - 40 - 10 , 90, 10)];
    //    [myView3 setBackgroundColor:[UIColor redColor]];
    //
    //    UIView *myView4 = [[UIView alloc]initWithFrame:CGRectMake((self.view.frame.size.width/2)-40+80, (self.view.frame.size.height / 2) - 40 - 10 , 10, 90)];
    //    [myView4 setBackgroundColor:[UIColor brownColor]];
    //
    //    UIView *myView5 = [[UIView alloc]initWithFrame:CGRectMake((self.view.frame.size.width/2)-40, (self.view.frame.size.height / 2) - 40 +80 , 90, 10)];
    //    [myView5 setBackgroundColor:[UIColor blackColor]];
    //
    //    [self.view addSubview:myView];
    //    [self.view addSubview:myView2];
    //    [self.view addSubview:myView3];
    //    [self.view addSubview:myView4];
    //    [self.view addSubview:myView5];
    
    UIView *myView = [[UIView alloc]initWithFrame:CGRectMake(0,0,self.view.frame.size.width,168)];
    [myView setBackgroundColor:[UIColor blackColor]];
    [self.view addSubview:myView];
    UIView *profile = [[UIView alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2 - 40 , 128 ,80,80)];
    [profile setBackgroundColor:[UIColor blueColor]];
    [self.view addSubview:profile];
    UIView *name = [[UIView alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2 - 40 , 128 + 82 ,80,25)];
    [name setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:name];
    
    UIView *title = [[UIView alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2 - 40 , 128 + 82 + 27 ,80,13)];
    [title setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:title];
    
    UIView *table = [[UIView alloc]initWithFrame:CGRectMake(0,168+100,self.view.frame.size.width,45)];
    [table setBackgroundColor:[UIColor cyanColor]];
    [self.view addSubview:table];

    UIView *cont1 = [[UIView alloc]initWithFrame:CGRectMake(0,0,self.view.frame.size.width / 4, 45)];
    [cont1 setBackgroundColor:[UIColor blueColor]];
    [table addSubview:cont1];
    
    UIView *cont2 = [[UIView alloc]initWithFrame:CGRectMake(self.view.frame.size.width / 4 , 0 ,self.view.frame.size.width / 4, 45)];
    [cont2 setBackgroundColor:[UIColor redColor]];
    [table addSubview:cont2];
    
    UIView *cont3 = [[UIView alloc]initWithFrame:CGRectMake((self.view.frame.size.width / 4 ) * 2 , 0 ,self.view.frame.size.width / 4, 45)];
    [cont3 setBackgroundColor:[UIColor blueColor]];
    [table addSubview:cont3];
    
    UIView *cont4 = [[UIView alloc]initWithFrame:CGRectMake((self.view.frame.size.width / 4 ) * 3 , 0 ,self.view.frame.size.width / 4, 45)];
    [cont4 setBackgroundColor:[UIColor redColor]];
    [table addSubview:cont4];
    
    UIView *cCont1 = [[UIView alloc]initWithFrame:CGRectMake(5,5,(self.view.frame.size.width / 4) - 10 , 15)];
    UIView *cCont2 = [[UIView alloc]initWithFrame:CGRectMake(5,25,(self.view.frame.size.width / 4) - 10 , 15)];
    [cCont1 setBackgroundColor:[UIColor blackColor]];
    [cCont2 setBackgroundColor:[UIColor blackColor]];
    [cont1 addSubview:cCont1];
    [cont1 addSubview:cCont2];
    
    
    UIView *cCont3 = [[UIView alloc]initWithFrame:CGRectMake(5,5,(self.view.frame.size.width / 4) - 10 , 15)];
    UIView *cCont4 = [[UIView alloc]initWithFrame:CGRectMake(5,25,(self.view.frame.size.width / 4) - 10 , 15)];
    [cCont3 setBackgroundColor:[UIColor blackColor]];
    [cCont4 setBackgroundColor:[UIColor blackColor]];
    [cont2 addSubview:cCont3];
    [cont2 addSubview:cCont4];
    
    
    UIView *cCont5 = [[UIView alloc]initWithFrame:CGRectMake(5,5,(self.view.frame.size.width / 4) - 10 , 15)];
    UIView *cCont6 = [[UIView alloc]initWithFrame:CGRectMake(5,25,(self.view.frame.size.width / 4) - 10 , 15)];
    [cCont5 setBackgroundColor:[UIColor blackColor]];
    [cCont6 setBackgroundColor:[UIColor blackColor]];
    [cont3 addSubview:cCont5];
    [cont3 addSubview:cCont6];

    
    UIView *cCont7 = [[UIView alloc]initWithFrame:CGRectMake(5,5,(self.view.frame.size.width / 4) - 10 , 15)];
    UIView *cCont8 = [[UIView alloc]initWithFrame:CGRectMake(5,25,(self.view.frame.size.width / 4) - 10 , 15)];
    [cCont7 setBackgroundColor:[UIColor blackColor]];
    [cCont8 setBackgroundColor:[UIColor blackColor]];
    [cont4 addSubview:cCont7];
    [cont4 addSubview:cCont8];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
