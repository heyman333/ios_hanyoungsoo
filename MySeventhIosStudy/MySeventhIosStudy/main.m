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
    
    [cal input:@"-"];
    [cal input:@20];
    [cal input:@"+"];
    [cal input:@10];
    [cal input:@"/"];
    [cal input:@20];
    [cal input:@"="];
    
    id integer = @10;
    id str = @"str";
    NSNumber *num = integer;
    NSString *sstr = str;
    NSLog(@"%@",num);
    NSLog(@"%@",sstr);

    
    
    
    return 0;
}
