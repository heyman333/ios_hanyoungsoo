//
//  main.m
//  MySeventhIosStudy
//
//  Created by HanYoungsoo on 2017. 1. 24..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IfStatementTest.h"
#import "Calculator.h"
int main(int argc, const char * argv[]) {
    Calculator *cal = [[Calculator alloc] init];

    [cal operatorInput:@"-"];
    [cal inputNum:10];
    [cal operatorInput:@"+"];
    [cal inputNum:100];
    [cal operatorInput:@"-"];
    [cal inputNum:20];
    [cal operatorInput:@"/"];
    [cal inputNum:10];
    [cal operatorInput:@"*"];
    [cal inputNum:2];
    [cal operatorInput:@"+"];
    [cal inputNum:30];
    [cal operatorInput:@"="];
    
    
    return 0;
}
