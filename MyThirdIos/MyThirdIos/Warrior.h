//
//  Warrior.h
//  MyThirdIos
//
//  Created by HanYoungsoo on 2017. 1. 17..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Wizard.h"

@interface Warrior : NSObject

@property NSString* name;
@property NSInteger health;
@property NSInteger mana;
@property NSInteger physicalPower;
@property NSInteger magicPower;
@property NSString *  weapon;


-(id)magicalAttack;
-(id)heathPlus;
-(id)megicalAttatk:(id)damage;
-(id)skill:(id)damage healthUp:(id)health;
-(id)physicalAttack:(id)to howDam:(NSInteger)dam;

@end
