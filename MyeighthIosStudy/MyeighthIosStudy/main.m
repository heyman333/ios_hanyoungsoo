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

    NSInteger temp;
    
    scanf("%ld",&temp);
    
    [Calendar printCal:temp];
    
    return 0;
}
