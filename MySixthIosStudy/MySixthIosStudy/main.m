//
//  main.m
//  MySixthIosStudy
//
//  Created by HanYoungsoo on 2017. 1. 23..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClassCalculator.h"
#import "Dimensionalshapes.h"
#import "ToolBox.h"

int main(int argc, const char * argv[]) {

    ClassCalculator *cal  = [[ClassCalculator alloc] init];
    ClassCalculator *initCal = [[ClassCalculator alloc] initWithSubject:@"국어" score:30 subject:@"수학" score:90];
    
    
//    NSLog(@"두 성적의 평균은 %.2f 입니다.",);
    
    
    NSLog(@"두 성적의 편균은 %.1f입니다.",[cal averageTwo:@"미술" score:20 subject2:@"체육" score:30] );
    
    NSLog(@"세 성적의 평균은 %.1f 입니다.", [cal averageThree:@"국어" score:100 subject2:@"영어" score:90 subject3:@"수학" score:84]);
    
    NSLog(@"네 성적의 평균은 %.1f 입니다.", [cal averageFour:@"국어" score:100 subject2:@"영어" score:90 subject3:@"수학" score:84 subject4:@"과학" score : 20]);
    
    
    Dimensionalshapes *dimension = [[Dimensionalshapes alloc] init];
    
    NSLog(@"%.2f입니다." ,[dimension getCubeV:10]);
    

    NSLog(@"%.2f입니다." ,[initCal retInitResult]);
    
    
//ToolBox 만들기(사용하기)
    
    NSLog(@"--------ToolBox 만들기(사용하기)---------");
    [ToolBox inchToCm:10.2];
    [ToolBox m2ToPyoung:10];
    [ToolBox pyoungToM2:11.33];
    [ToolBox cmToInch:13.1];

    return 0;
}

/*
 
1. @class name
    - 해당 클래스의 존재를 알려준다.
    - 사용하기 위해서는 @implementaion에 @import시켜야 한다.
    - 
 
2. @protocol
    - 해당 프로토콜의 존재를 알려준다.
    - 
 
3. @interface
 
 
 
4. @implemantion
 

5. 라이브러리 
    - 클래스의 모임(
 
 
 */
 

