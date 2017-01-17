//
//  Horse.h
//  MySecondIos
//
//  Created by HanYoungsoo on 2017. 1. 17..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Horse : NSObject

@property id name;
@property id gender;
@property id color;
@property id breed;
@property id weight;

- (void)run;
- (void)walk;
- (void)race;
- (void)eat;

@end
