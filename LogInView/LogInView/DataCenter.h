//
//  DataCenter.h
//  LogInView
//
//  Created by HanYoungsoo on 2017. 2. 24..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataCenter : NSObject
+(instancetype)sharedInstance;
-(void)savaID:(NSString *)userid pwd:(NSString *)userPwd;
-(NSDictionary *)getUserinfo;

@end
