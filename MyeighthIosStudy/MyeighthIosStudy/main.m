//
//  main.m
//  MyeighthIosStudy
//
//  Created by HanYoungsoo on 2017. 1. 31..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calendar.h"
int main(int argc, const char * argv[]) {
//
//    NSInteger temp;
//    
//    scanf("%ld",&temp);
//    
//    [Calendar printCal:temp];

    @autoreleasepool {
        __block int foo = 10;
        
        void (^printFoo)(int, float) =
        ^(int f, float ff){
            
            NSLog(@"넘어온 값 : %i, %.2f ", f, ff);
            NSLog(@"foo = %i" , foo);
            foo = f;
        };
    
        foo = 20;
        printFoo(50, 30.12);
        NSLog(@"foo = %i", foo );
        
        
    }
    
    
    
    return 0;
}
