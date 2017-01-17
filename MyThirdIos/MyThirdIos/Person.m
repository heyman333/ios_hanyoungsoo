//
//  Person.m
//  MyThirdIos
//
//  Created by HanYoungsoo on 2017. 1. 17..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "Person.h"

@implementation Person

/**
 @discussion 누군가에게 말을 겁니다.
 @param no parameters
 @author HanYoungsoo 
 @version 1.0
 @return nil
 */

-(id)talk{
    NSLog(@"말을 합니다.");
    return nil;
}

-(id)sayMyName{
    NSLog(@"제 이름은 %@ 입니다.", self.name);
    return nil;
}

@end
