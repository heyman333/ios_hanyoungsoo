//
//  Wizard.m
//  MyThirdIos
//
//  Created by HanYoungsoo on 2017. 1. 17..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "Wizard.h"
#import "Warrior.h"

@implementation Wizard

- (void)magicalAttack{
    NSLog(@"마법사의 마법공격");
}

-(id)magicalAttack:(Warrior*)to howDam:(NSInteger)dam{
    NSLog(@"**소서리스**가 %@에게 %lu의 마법공격을 가합니다!!", to.name, dam);
    to.health -= dam;
    
    return nil;
}

@end
