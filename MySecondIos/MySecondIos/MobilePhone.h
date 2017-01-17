//
//  MobilePhone.h
//  MySecondIos
//
//  Created by HanYoungsoo on 2017. 1. 17..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MobilePhone : NSObject

@property id modelNo;
@property id size;
@property id color;
@property id species;

- (void)turnOn;
- (void)turnOff;
- (void)volumeUp;
- (void)volumeDown;
- (void)charge;

@end
