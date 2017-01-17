//
//  Car.h
//  MySecondIos
//
//  Created by HanYoungsoo on 2017. 1. 17..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

@property id speed;
@property id color;
@property id model;
@property id company;

- (void)speedUp;
- (void)speedDown;
- (void)colorChange;
- (void)accelate;
- (void)stop;

@end
