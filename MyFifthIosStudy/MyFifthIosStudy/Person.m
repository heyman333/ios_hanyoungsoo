//
//  Person.m
//  MyFifthIosStudy
//
//  Created by HanYoungsoo on 2017. 1. 20..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "Person.h"

@interface Person ()

@property NSString * name;
@property NSInteger age;

@end
@implementation Person

-(void)sayMyName{
    NSLog(@"내 이름은 %@ 입니다." , self.name);
}

-(void)sayMyAge{
    NSLog(@"내 이름은 %ld 입니다." , self.age);
}

- (instancetype)initWithName:(NSString *)name andAge:(NSInteger)age
{
    
    self = [super init];
    if (self) {
        self.name = name;
        self.age = age;
    }
    return self;
}

@end
