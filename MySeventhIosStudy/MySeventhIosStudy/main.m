//
//  main.m
//  MySeventhIosStudy
//
//  Created by HanYoungsoo on 2017. 1. 24..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IfStatementTest.h"
int main(int argc, const char * argv[]) {
    
    [IfStatementTest whatIsMyGrade:30];
    
    NSLog(@"%.1f",[IfStatementTest whatIsMyPoint:@"A"]);
    
    return 0;
}
