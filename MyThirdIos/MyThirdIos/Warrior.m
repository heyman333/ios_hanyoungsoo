//
//  Warrior.m
//  MyThirdIos
//
//  Created by HanYoungsoo on 2017. 1. 17..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "Warrior.h"
#import "Wizard.h"
//@class Wizard;
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

-(id)megicalAttatk:(id)damage{
    NSLog(@"%@의 공격력으로 공격!!", damage);
    return nil;
    
}

-(id)skill:(id)damage healthUp:(id)health{
    NSLog(@"%@의 공격과 함께 %@의 체력 충전 !!!", damage, health);
    return nil;
}

-(id)physicalAttack:(Wizard *)to howDam:(NSInteger)dam{
    NSLog(@"##바바리안##이 %@에게 %lu 의 물리공격을 가합니다!!", to.name, dam);
    to.health -= dam;
    return nil;
}


@end
