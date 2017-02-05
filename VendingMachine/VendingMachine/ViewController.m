//
//  ViewController.m
//  VendingMachine
//
//  Created by HanYoungsoo on 2017. 2. 4..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property UIButton *won100;
@property UIButton *won500;
@property UIButton *won1000;
@property UIButton *won5000;
@property NSInteger money;
@property UILabel *showPrice;
@property UILabel *showState;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _money = 0 ;
    
    UIView *menu1 = [[UIView alloc] initWithFrame:CGRectMake(10,15,self.view.frame.size.width/2 - 15 ,200)];
    UIView *menu2 = [[UIView alloc] initWithFrame:CGRectMake((self.view.frame.size.width/2)+5,15,self.view.frame.size.width/2-15 ,200)];
    
    UIView *menu3 = [[UIView alloc] initWithFrame:CGRectMake(10,225,self.view.frame.size.width/2 - 15 ,200)];
    UIView *menu4 = [[UIView alloc] initWithFrame:CGRectMake((self.view.frame.size.width/2)+5,225,self.view.frame.size.width/2-15 ,200)];
    
    UIView *priceTag = [[UIView alloc] initWithFrame:CGRectMake(10,435,self.view.frame.size.width - 20 ,50)];
    
    UIView *backImg = [[UIView alloc] initWithFrame:CGRectMake(0, 0,self.view.frame.size.width, self.view.frame.size.height)];
    
    _showState = [[UILabel alloc] initWithFrame:CGRectMake(10,490,self.view.frame.size.width - 20 ,45)];
    [_showState setBackgroundColor:[UIColor lightGrayColor]];
    _showState.textAlignment = 1;
    UIView *priceChoice = [[UIView alloc] initWithFrame:CGRectMake(10,525,self.view.frame.size.width - 20 ,120)];
    
    
    
    _won100 = [UIButton buttonWithType:UIButtonTypeCustom];
    _won100.frame = CGRectMake(30,20,120,35);
    _won100.backgroundColor = [UIColor lightTextColor];
    [_won100 setTitle:@"100원" forState:UIControlStateNormal];
    [_won100 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_won100 setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    
    
    
    _won500 = [UIButton buttonWithType:UIButtonTypeCustom];
    _won500.frame = CGRectMake(205,20,120,35);
    _won500.backgroundColor = [UIColor lightTextColor];
    [_won500 setTitle:@"500원" forState:UIControlStateNormal];
    [_won500 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_won500 setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    
    
    _won1000 = [UIButton buttonWithType:UIButtonTypeCustom];
    _won1000.frame = CGRectMake(30,60,120,35);
    _won1000.backgroundColor = [UIColor lightTextColor];
    [_won1000 setTitle:@"1000원" forState:UIControlStateNormal];
    [_won1000 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_won1000 setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    
    
    _won5000 = [UIButton buttonWithType:UIButtonTypeCustom];
    _won5000.frame = CGRectMake(205,60,120,35);
    _won5000.backgroundColor = [UIColor lightTextColor];
    [_won5000 setTitle:@"5000원" forState:UIControlStateNormal];
    [_won5000 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_won5000 setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    
    
    
    UIImage *btnImage = [UIImage imageNamed:@"coke3.png"];
    
    UIButton *cokePurchaceBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [cokePurchaceBtn setTitle:@"1000원" forState: UIControlStateNormal];
    cokePurchaceBtn.frame=CGRectMake(0, 0 ,menu1.frame.size.width, menu1.frame.size.height);
//    [cokePurchaceBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [cokePurchaceBtn setImage:btnImage forState:UIControlStateNormal];
    
    
    UIImage *btnImage2 = [UIImage imageNamed:@"sprite2.png"];
    
    UIButton *spritePurchaceBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [spritePurchaceBtn setTitle:@"1400원" forState: UIControlStateNormal];
    spritePurchaceBtn.frame=CGRectMake(0, 0 ,menu2.frame.size.width, menu2.frame.size.height);
//    [spritePurchaceBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    [spritePurchaceBtn setBackgroundColor:[UIColor lightTextColor]];
    [spritePurchaceBtn setImage:btnImage2 forState:UIControlStateNormal];
    
    UIImage *btnImage3 = [UIImage imageNamed:@"budweiser2.png"];
    
    UIButton *budPurchaceBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [budPurchaceBtn setTitle:@"5000원" forState: UIControlStateNormal];
    budPurchaceBtn.frame=CGRectMake(0, 0 ,menu3.frame.size.width, menu3.frame.size.height);
//    [budPurchaceBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    [budPurchaceBtn setBackgroundColor:[UIColor lightTextColor]];
    [budPurchaceBtn setImage:btnImage3 forState:UIControlStateNormal];
    
    
    UIImage *btnImage4 = [UIImage imageNamed:@"windsor4.png"];
    
    UIButton *windPurchaceBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [windPurchaceBtn setTitle:@"80000원" forState: UIControlStateNormal];
    windPurchaceBtn.frame=CGRectMake(0, 0 ,menu4.frame.size.width, menu4.frame.size.height);
//    [windPurchaceBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    [windPurchaceBtn setBackgroundColor:[UIColor lightTextColor]];
    [windPurchaceBtn setImage:btnImage4 forState:UIControlStateNormal];
    
    
    priceTag.backgroundColor = [UIColor lightTextColor];
    priceChoice.backgroundColor = [UIColor grayColor];
    
    
    UIImageView *coke = [[UIImageView alloc] initWithFrame:CGRectMake(0,0,menu1.frame.size.width, menu1.frame.size.height)];
    coke.image = [UIImage imageNamed:@"coke3.png"];
    UIImageView *sprite = [[UIImageView alloc] initWithFrame:CGRectMake(0,0,menu2.frame.size.width, menu2.frame.size.height)];
    sprite.image = [UIImage imageNamed:@"sprite2.png"];
    UIImageView *budweiser = [[UIImageView alloc] initWithFrame:CGRectMake(0,0,menu3.frame.size.width, menu3.frame.size.height)];
    budweiser.image = [UIImage imageNamed:@"budweiser2.png"];
    
    UIImageView *windsor = [[UIImageView alloc] initWithFrame:CGRectMake(0,0,menu4.frame.size.width, menu4.frame.size.height)];
    windsor.image = [UIImage imageNamed:@"windsor4.png"];
    
    _showPrice = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, priceTag.frame.size.width, priceTag.frame.size.height)];
    
    _showPrice.text = @"넣은금액 : 0원";
    _showPrice.font = [UIFont systemFontOfSize:20];
    _showPrice.textAlignment = 1;

    [self.view addSubview:backImg];
    [self.view addSubview:menu1];
    [self.view addSubview:menu2];
    [self.view addSubview:menu3];
    [self.view addSubview:menu4];
    [self.view addSubview:priceTag];
    [self.view addSubview:priceChoice];
    [self.view addSubview:_showState];

    [priceChoice addSubview:_won100];
    [priceChoice addSubview:_won500];
    [priceChoice addSubview:_won1000];
    [priceChoice addSubview:_won5000];
    [menu1 addSubview:coke];
    [menu2 addSubview:sprite];
    [menu3 addSubview:budweiser];
    [menu4 addSubview:windsor];
    [priceTag addSubview:_showPrice];
    
    [menu1 addSubview:cokePurchaceBtn];
    [menu2 addSubview:spritePurchaceBtn];
    [menu3 addSubview:budPurchaceBtn];
    [menu4 addSubview:windPurchaceBtn];
    
    UIImageView *backGround = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, backImg.frame.size.width, backImg.frame.size.height)];
    backGround.image = [UIImage imageNamed:@"iphone.jpg"];
    
    [_won100 addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [_won500 addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [_won1000 addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [_won5000 addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    
    [cokePurchaceBtn addTarget:self action:@selector(goodsSelected:) forControlEvents:UIControlEventTouchUpInside];
    [spritePurchaceBtn addTarget:self action:@selector(goodsSelected:) forControlEvents:UIControlEventTouchUpInside];
    [budPurchaceBtn addTarget:self action:@selector(goodsSelected:) forControlEvents:UIControlEventTouchUpInside];
    [windPurchaceBtn addTarget:self action:@selector(goodsSelected:) forControlEvents:UIControlEventTouchUpInside];
    
    [backImg addSubview:backGround];
    [backImg setAlpha:0.7];
    

}

- (void)btnClicked:(UIButton *)sender{
    
    NSLog(@"%@", sender.currentTitle);
    
    if([sender.currentTitle isEqualToString:@"100원"]){
        [_showState setText:@"100원이 추가 되었습니다."];
        _money+=100;
        [_showPrice setText:[NSString stringWithFormat:@"넣은금액 : %ld원",_money]];
        
    }
    else if([sender.currentTitle isEqualToString:@"500원"]){
        [_showState setText:@"500원이 추가 되었습니다."];
        _money+=500;
        [_showPrice setText:[NSString stringWithFormat:@"넣은금액 : %ld원",_money]];
    }
    else if([sender.currentTitle isEqualToString:@"1000원"]){
        [_showState setText:@"1000원이 추가 되었습니다."];
        _money+=1000;
        [_showPrice setText:[NSString stringWithFormat:@"넣은금액 : %ld원",_money]];
    }
    else if([sender.currentTitle isEqualToString:@"5000원"]){
        [_showState setText:@"5000원이 추가 되었습니다."];
        _money+=5000;
        [_showPrice setText:[NSString stringWithFormat:@"넣은금액 : %ld원",_money]];
    }
    
    
}

-(void)goodsSelected:(UIButton *)sender{
    if([sender.currentTitle isEqualToString:@"1000원"]){
        
        
        if (_money >= 1000) {
            _money -= 1000;
            [_showState setText:@"콜라가 나옵니다."];
            [_showState setHighlightedTextColor:[UIColor blueColor]];
            [_showPrice setText:[NSString stringWithFormat:@"넣은금액 : %ld원",_money]];
        }
        else{
            [_showState setText:@"잔액이 부족합니다."];
        }
        
    }
    //sprite purchace!
    if([sender.currentTitle isEqualToString:@"1400원"]){
        if (_money >= 1400) {
            _money -= 1400;
            [_showState setText:@"스프라이트가 나옵니다."];
            [_showState setHighlightedTextColor:[UIColor blueColor]];
            [_showPrice setText:[NSString stringWithFormat:@"넣은금액 : %ld원",_money]];
        }
        else{
            [_showState setText:@"잔액이 부족합니다."];
        }
        
    }
    
    //bud purchace!
    if([sender.currentTitle isEqualToString:@"5000원"]){
        if (_money >= 5000) {
            _money -= 5000;
            [_showState setText:@"버드와이져가 나옵니다."];
            [_showState setHighlightedTextColor:[UIColor blueColor]];
            [_showPrice setText:[NSString stringWithFormat:@"넣은금액 : %ld원",_money]];
        }
        else{
            [_showState setText:@"잔액이 부족합니다."];
        }
        
    }
    
    //windsor purchace!
    if([sender.currentTitle isEqualToString:@"80000원"]){
        if (_money >= 80000) {
            _money -= 80000;
            [_showState setText:@"윈져가 나옵니다."];
            [_showState setHighlightedTextColor:[UIColor blueColor]];
            [_showPrice setText:[NSString stringWithFormat:@"넣은금액 : %ld원",_money]];
        }
        else{
            [_showState setText:@"잔액이 부족합니다."];
        }
        
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
