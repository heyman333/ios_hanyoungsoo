//
//  Person.h
//  MyFifthIosStudy
//
//  Created by HanYoungsoo on 2017. 1. 20..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

-(void)sayMyName;
-(void)sayMyAge;

- (instancetype)initWithName:(NSString *)name andAge:(NSInteger)age;


@end
