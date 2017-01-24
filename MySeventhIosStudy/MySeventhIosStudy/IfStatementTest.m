//
//  IfStatementTest.m
//  MySeventhIosStudy
//
//  Created by HanYoungsoo on 2017. 1. 24..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "IfStatementTest.h"

@implementation IfStatementTest
//어떤 수를 받아서 그 수가 짝수인지 확인하는 메소드


+ (void)whatIsMyGrade:(NSInteger)score {
    
    if(score>=90 && score <= 100 ){
        NSLog(@"A+");
    }
    else if(score>=80 && score < 90 ){
        NSLog(@"A");
    }
    else if(score>=70 && score < 80 ){
        NSLog(@"B+");
    }
    else if(score>=60 && score < 70 ){
        NSLog(@"B");
    }
    else if(score>=50 && score < 60 ){
        NSLog(@"C+");
    }
    else if(score>=40 && score < 50 ){
        NSLog(@"C");
    }
    else if(score>=30 && score < 40 ){
        NSLog(@"D+");
    }
    else if(score>=20 && score < 30 ){
        NSLog(@"D");
    }
    else{
        NSLog(@"F");
    }
    
}

+ (CGFloat)whatIsMyPoint:(NSString *)score{
    
    if([score isEqualToString:@"A+"]){
        return 4.5;
    }
    else if([score isEqualToString:@"A"]){
        return 4.0;
    }
    else if([score isEqualToString:@"B+"]){
        return 3.5;
    }
    else if([score isEqualToString:@"B"]){
        return 3.0;
    }
    else if([score isEqualToString:@"C+"]){
        return 2.5;
    }
    else if([score isEqualToString:@"C"]){
        return 2.0;
    }
    else if([score isEqualToString:@"D+"]){
        return 1.5;
    }
    else if([score isEqualToString:@"D"]){
        return 1.0;
    }
    else{
        return 0.0;
    }
}





@end
