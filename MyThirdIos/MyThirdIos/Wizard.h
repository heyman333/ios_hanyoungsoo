//
//  Wizard.h
//  MyThirdIos
//
//  Created by HanYoungsoo on 2017. 1. 17..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Wizard : NSObject

@property int health;
@property int mana;
@property id physicalPower;
@property id magicPower;
@property id weapon;


- (void)magicalAttack;


@end
