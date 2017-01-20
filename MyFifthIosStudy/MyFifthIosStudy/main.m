//
//  main.m
//  MyFifthIosStudy
//
//  Created by HanYoungsoo on 2017. 1. 20..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Man.h"
int main(int argc, const char * argv[]) {
    
    Person *p2 = [[Person alloc] initWithName:@"한영수" andAge:27];
    [p2 sayMyAge];
    [p2 sayMyName];
    
    return 0;
}
