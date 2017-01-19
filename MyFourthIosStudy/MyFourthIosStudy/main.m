//
//  main.m
//  MyFourthIosStudy
//
//  Created by HanYoungsoo on 2017. 1. 18..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UnivStudent.h"

int main(int argc, const char * argv[]) {
  
    Person* person = [Person new];
    NSLog(@"Person");
    [person eat];
    
    Student* youngsoo = [Student new];
    NSLog(@"Student");
    [youngsoo eat];
    [youngsoo study];

    UnivStudent* univStdt = [UnivStudent new];
    NSLog(@"UnivStudent");
    [univStdt eat];
    [univStdt study];
    [univStdt goMT];
    
    return 0;
}
