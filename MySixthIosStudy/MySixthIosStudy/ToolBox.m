//
//  ToolBox.m
//  MySixthIosStudy
//
//  Created by HanYoungsoo on 2017. 1. 23..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "ToolBox.h"

@implementation ToolBox



+ (void)inchToCm:(CGFloat)inch{
    NSLog(@"%.2f 인치의 센치미터 값은 약 %.2f입니다." , inch ,inch * 2.54);
}

+ (void)cmToInch:(CGFloat)cm{
    NSLog(@"%.2f센치의 인치 값은 약 %.2f입니다." , cm ,cm / 2.54);
}

+ (void)m2ToPyoung:(CGFloat)m2{
    NSLog(@"%.2f 는 약 %.2f평입니다." , m2 ,m2 / 3.305785);
}

+ (void)pyoungToM2:(CGFloat)pyoung{
    NSLog(@"%.2f 평은 약 %.2f제곱미터입니다." , pyoung , pyoung * 3.305785);
}@end
