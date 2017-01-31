//
//  Calendar.m
//  MyeighthIosStudy
//
//  Created by HanYoungsoo on 2017. 1. 31..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "Calendar.h"

@implementation Calendar


+(void)printCal:(NSInteger)month{
    
    switch (month) {
        case 1:
            NSLog(@"%ld월은 31일까지 있습니다.", month);
            break;
        case 2:
            NSLog(@"%ld월은 26일까지 있습니다.", month);
            break;
        case 3:
            NSLog(@"%ld월은 31일까지 있습니다.", month);
            break;
        case 4:
            NSLog(@"%ld월은 30일까지 있습니다.", month);
            break;
        case 5:
            NSLog(@"%ld월은 30일까지 있습니다.", month);
            break;
        case 6:
            NSLog(@"%ld월은 30일까지 있습니다.", month);
            break;
        case 7:
            NSLog(@"%ld월은 30일까지 있습니다.", month);
            break;
        case 8:
            NSLog(@"%ld월은 30일까지 있습니다.", month);
            break;
        case 9:
            NSLog(@"%ld월은 30일까지 있습니다.", month);
            break;
        case 10:
            NSLog(@"%ld월은 30일까지 있습니다.", month);
            break;
        case 11:
            NSLog(@"%ld월은 30일까지 있습니다.", month);
            break;
        case 12:
            NSLog(@"%ld월은 30일까지 있습니다.", month);
            break;
        default:
            NSLog(@"다시 입력해주세요");
            break;
    }
    
    
    
}



@end
