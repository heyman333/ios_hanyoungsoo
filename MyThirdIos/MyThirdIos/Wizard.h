//
//  Wizard.h
//  MyThirdIos
//
//  Created by HanYoungsoo on 2017. 1. 17..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Warrior.h"

@interface Wizard : NSObject

@property NSString* name;
@property NSInteger health;
@property NSInteger mana;
@property NSInteger physicalPower;
@property NSInteger magicPower;
@property NSString* weapon;


- (id)magicalAttack:(id)to howDam:(NSInteger)dam;


@end
