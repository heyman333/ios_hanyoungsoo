//
//  Warrior.m
//  MyThirdIos
//
//  Created by HanYoungsoo on 2017. 1. 17..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "Warrior.h"

@implementation Warrior

- (id)magicalAttack{
    NSLog(@"전사가 마법공격을 합니다. 마력 -10 ");
    self.mana -= 10;
    return  nil;
}

- (id)heathPlus{
    NSLog(@"체력이 10 증가 하였습니다.");
    self.health += 10;
    return  nil;
}
@end
