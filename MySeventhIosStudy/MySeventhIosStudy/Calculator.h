//
//  Calcultor.h
//  MySeventhIosStudy
//
//  Created by HanYoungsoo on 2017. 1. 24..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Calculator : NSObject


- (void)operatorInput:(NSString *)oper;
- (NSString *)operatorGet;
- (void)inputNum:(NSInteger)num;
@end
