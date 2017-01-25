//
//  Calcultor.m
//  MySeventhIosStudy
//
//  Created by HanYoungsoo on 2017. 1. 24..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "Calculator.h"

@interface Calculator ()
@property NSInteger retrunVal;
@property NSMutableArray *oper;
- (void)operatorInput:(NSString *)oper;
- (NSString *)operatorGet;
- (void)inputNumAndCal:(NSInteger)num;
@end

@implementation Calculator


- (instancetype)init
{
    self = [super init];
    if (self) {
        self.retrunVal = 0 ;
        self.oper = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)operatorInput:(NSString *)oper{
    [self.oper addObject:oper];
    if([oper isEqualToString:@"="]){
        NSLog(@"계산된 값은 %ld 입니다.", self.retrunVal);
    }
}
- (NSString *)operatorGet{
    return  [self.oper objectAtIndex:[self.oper count]-1];
}


- (void)input:(id)input{
    NSNumber *num;
    NSString *str;
    if([input isKindOfClass:[NSNumber class]]){
        num = input;
        [self inputNumAndCal:[num integerValue]];
        
    }
    else if([input isKindOfClass:[NSString class]]){
        str = input;
        [self operatorInput:input];
        
    }

}
- (void)inputNumAndCal:(NSInteger)num{
    if([self.oper count]==0){
        NSLog(@"연산자가 들어있지 않습니다.");
        self.retrunVal = num;
    }
    else{
        if([[self operatorGet] isEqualToString:@"+"]){
            NSLog(@"연산을 실행합니다 %ld + %ld = %ld -> ", self.retrunVal, num, self.retrunVal + num);
            [self.oper removeAllObjects];
            self.retrunVal = self.retrunVal + num;}
        else if([[self operatorGet] isEqualToString:@"-"]){
            NSLog(@"연산을 실행합니다 %ld - %ld = %ld -> ", self.retrunVal, num, self.retrunVal - num);
            [self.oper removeAllObjects];
            self.retrunVal = self.retrunVal - num;
        }
        else if([[self operatorGet] isEqualToString:@"*"]){
            NSLog(@"연산을 실행합니다 %ld * %ld = %ld -> ", self.retrunVal, num, self.retrunVal * num);
            [self.oper removeAllObjects];
            self.retrunVal = self.retrunVal * num;
        }
        else if([[self operatorGet] isEqualToString:@"/"]){
            NSLog(@"연산을 실행합니다 %ld / %ld = %ld -> ", self.retrunVal, num, self.retrunVal / num);
            [self.oper removeAllObjects];
            self.retrunVal = self.retrunVal / num;
        }
}
}

@end
