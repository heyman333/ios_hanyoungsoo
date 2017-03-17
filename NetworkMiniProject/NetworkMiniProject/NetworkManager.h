//
//  NetworkManager.h
//  NetworkMiniProject
//
//  Created by HanYoungsoo on 2017. 3. 16..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking.h>

typedef void(^CompletionBlock)(BOOL isSuccess, id response);

static NSString const *SIGNUP_API = @"https://fc-ios.lhy.kr/api/member/signup/";
static NSString const *LOGIN_API = @"https://fc-ios.lhy.kr/api/member/login/";
static NSString const *LOGOUT_API = @"https://fc-ios.lhy.kr/api/member/logout/";
static NSString const *POST_API = @"https://fc-ios.lhy.kr/api/post";
//static NSString const *BASE_API = @"https://fc-ios.lhy.kr/api";

@interface NetworkManager : NSObject
-(void)memberJoin:(NSString *)user_id pwd:(NSString *)user_pwd rePwd:(NSString *)user_pwd2 completion:(CompletionBlock)completion;
-(void)logIn:(NSString *)user_id pwd:(NSString *)user_pwd completion:(CompletionBlock)completion;
-(void)logOut:(NSString *)token completion:(CompletionBlock)completion;
-(void)getPostList:(NSString *)token pageNum:(NSNumber *)num completion:(CompletionBlock)completion;
@end
