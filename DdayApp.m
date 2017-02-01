//
//  DdayApp.m
//  MyNinethIosStudy
//
//  Created by HanYoungsoo on 2017. 2. 1..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "DdayApp.h"

@implementation DdayApp

+(void)isLunarMonth:(NSInteger)year{
    
    if(((year % 4 ==0 && year % 100 !=0 )|| year % 400 ==0)){
        NSLog(@"윤달입니다.");
        
    }
    else{
        NSLog(@"윤달이 아닙니다.");
    }

}


@end
