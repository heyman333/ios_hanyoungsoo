//
//  MathToolBox.m
//  MyTenthIosStudy
//
//  Created by HanYoungsoo on 2017. 2. 1..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "MathToolBox.h"

@implementation MathToolBox

+(NSInteger)sumEachNum:(NSInteger)num{
    
    NSString *formmatterStr = [NSString stringWithFormat:@"%ld", num];
    NSInteger sum=0;
    for (int i = 0; i<[formmatterStr length]; i++ ) {
        sum += [[formmatterStr substringWithRange:NSMakeRange(i, 1)] integerValue];
    }
    NSLog(@"%ld", sum);
    return sum;
    
}


+(void)googoodan:(NSInteger)dan{
//    for (NSInteger c = 0; c < 10 ; c++) {
//        NSLog(@"%lu X %lu  = %lu",dan,c,dan * c);
//    }
    
    NSInteger c = 1;
    while (c < 10) {
        NSLog(@"%lu X %lu  = %lu",dan,c,dan * c);
        c++;
    }
}


+(NSInteger)factorial:(NSInteger)num{
    
    NSInteger result = 1;
    for (NSInteger c = num ; c > 0 ; c--) {
        result *= c;
    }
    
    NSLog(@"%ld", result);
    return result;
}


@end
