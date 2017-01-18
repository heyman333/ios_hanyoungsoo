//
//  Person.m
//  MyThirdIos
//
//  Created by HanYoungsoo on 2017. 1. 17..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "Person.h"

@implementation Person

-(id)talk{
    NSLog(@"말하다");
    return nil;
}

-(id)sayMyName{
    NSLog(@"제 이름은 %@ 입니다.", self.name);
    return nil;
}

@end
