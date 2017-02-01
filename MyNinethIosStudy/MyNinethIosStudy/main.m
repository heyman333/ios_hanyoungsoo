//
//  main.m
//  MyNinethIosStudy
//
//  Created by HanYoungsoo on 2017. 2. 1..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import <Foundation/Foundation.h>
int main(int argc, const char * argv[]) {


    NSNumber *ff = @13.55198;
    
    NSArray *temp = [[ff stringValue] componentsSeparatedByString:@"."];
    NSInteger intTemp = [temp [1] integerValue];
    int count=0;
    while (intTemp >= 1) {
        count++;
        intTemp = (intTemp/10);
    }
    int a = (int)pow(10, count-1);
    float b = 5 * (1/pow(10, count));
    float temp2;
    float newFloat;
    //fNum = 3.168
    temp2 = (int)(([ff floatValue] + b) * a);
    newFloat = temp2 / a;
    
    NSLog(@"%f", newFloat);
    
    

    return 0;
}
