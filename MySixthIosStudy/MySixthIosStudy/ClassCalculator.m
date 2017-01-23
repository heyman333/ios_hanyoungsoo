//
//  ClassCalculator.m
//  MySixthIosStudy
//
//  Created by HanYoungsoo on 2017. 1. 23..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "ClassCalculator.h"

@interface ClassCalculator ()
@property NSString *subject1;
@property NSString *subject2;
@property NSInteger score1 ;
@property NSInteger score2 ;
@end
@implementation ClassCalculator


- (instancetype)initWithSubject:(NSString *)subject1 score:(NSInteger)score1 subject:(NSString *)subject2 score:(NSInteger)score2
{
    self = [super init];
    if (self) {
        self.subject1 = subject1;
        self.subject2 = subject2;
        self.score1 = score1;
        self.score2 = score2;
    }
    return self;
}


/*
    과목의 평균을 구하는 메소드들입니다.
    averageTwo : (과목1, 점수1), (과목2, 점수2)
    averageThree : (과목1, 점수1), (과목2, 점수2),(과목3, 점수3)
    averageFour : (과목1, 점수1), (과목2, 점수2), (과목3, 점수3), (과목4, 점수4)
*/

- (CGFloat)averageTwo : (NSString *) subject score:(NSInteger)one subject2 :(NSString *) subject2 score:(NSInteger)two{
    NSLog(@"%@ : %ld, %@ : %ld", subject , one ,subject2, two);
    return (one + two ) / 2.0 ;
}

- (CGFloat)averageThree : (NSString *) subject score:(NSInteger)one subject2 :(NSString *) subject2 score:(NSInteger)two subject3 :(NSString *) subject3 score:(NSInteger)three{
    NSLog(@"%@ : %ld, %@ : %ld , %@ : %ld", subject , one ,subject2, two, subject3 , three);
    return (one + two + three ) / 3.0 ;
}

- (CGFloat)averageFour : (NSString *) subject score:(NSInteger)one subject2 :(NSString *) subject2 score:(NSInteger)two subject3 :(NSString *) subject3 score:(NSInteger)three subject4 :(NSString *) subject4 score:(NSInteger)four{
    NSLog(@"%@ : %ld, %@ : %ld , %@ : %ld , %@ : %ld", subject , one ,subject2, two, subject3 , three , subject4 , four);
    return (one + two + three + four) / 4.0 ;
}

- (CGFloat)retInitResult{

    NSLog(@"%@ : %ld @ , %@ : %ld", self.subject1 ,self.score1, self.subject2 , self.score2 );
    
    return (CGFloat)self.score1 + self.score2 / 2.0;
    
    
    
}


@end
