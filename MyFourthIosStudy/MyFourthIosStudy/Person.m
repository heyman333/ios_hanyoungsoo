//
//  Person.m
//  MyFourthIosStudy
//
//  Created by HanYoungsoo on 2017. 1. 19..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "Person.h"

@interface Person ()

@property NSInteger age;

@property NSInteger eattingCount;
@end

@implementation Person


- (void)eat
{
    self.eattingCount++;
    NSLog(@"우걱 우걱");
}

- (NSInteger)howManayEatting
{
    return self.eattingCount;
}

@end
