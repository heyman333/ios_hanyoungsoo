//
//  DataCenter.m
//  LogInView
//
//  Created by HanYoungsoo on 2017. 2. 24..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "DataCenter.h"

@interface DataCenter ()
@property NSString *userID;
@property NSString *userPwd;
@end


@implementation DataCenter

+(instancetype)sharedInstance{
    
    static DataCenter *datacenter;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        datacenter = [[DataCenter alloc] init];
    });
    return datacenter;
}

-(void)savaID:(NSString *)userid pwd:(NSString *)userPwd{
    
    NSUserDefaults *userInfo = [NSUserDefaults standardUserDefaults];

    [userInfo setValue:userid forKey:@"userID"];
    [userInfo setValue:userPwd forKey:@"userPwd"];
}

-(NSDictionary *)getUserinfo{
    NSUserDefaults *userInfo = [NSUserDefaults standardUserDefaults];
    
    NSString *userID = [userInfo objectForKey:@"userID"];
    NSString *userPwd = [userInfo objectForKey:@"userPwd"];
    
    NSDictionary *userInfos = @{@"userID":userID , @"userPwd":userPwd};
    
    return userInfos;
}



@end
