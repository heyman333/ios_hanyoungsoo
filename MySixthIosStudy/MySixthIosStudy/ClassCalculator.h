//
//  ClassCalculator.h
//  MySixthIosStudy
//
//  Created by HanYoungsoo on 2017. 1. 23..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClassCalculator : NSObject

- (CGFloat)averageTwo : (NSString *) subject score:(NSInteger)one subject2 :(NSString *) subject2 score:(NSInteger)two;

- (CGFloat)averageThree : (NSString *) subject score:(NSInteger)one subject2 :(NSString *) subject2 score:(NSInteger)two subject3 :(NSString *) subject3 score:(NSInteger)three;

- (CGFloat)averageFour : (NSString *) subject score:(NSInteger)one subject2 :(NSString *) subject2 score:(NSInteger)two subject3 :(NSString *) subject3 score:(NSInteger)three subject4 :(NSString *) subject4 score:(NSInteger)four;

- (instancetype)initWithSubject:(NSString *)subject1 score:(NSInteger)score1 subject:(NSString *)subject2 score:(NSInteger)score2;

- (CGFloat)retInitResult;
@end
