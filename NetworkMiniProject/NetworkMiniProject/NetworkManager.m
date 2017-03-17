//
//  NetworkManager.m
//  NetworkMiniProject
//
//  Created by HanYoungsoo on 2017. 3. 16..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "NetworkManager.h"
#import "DataCenter.h"

@implementation NetworkManager

-(void)memberJoin:(NSString *)user_id pwd:(NSString *)user_pwd rePwd:(NSString *)user_pwd2 completion:(CompletionBlock)completion{
    NSMutableDictionary *bodyParameters = [[NSMutableDictionary alloc] init];
    
    [bodyParameters setObject:user_id forKey:@"username"];
    [bodyParameters setObject:user_pwd forKey:@"password1"];
    [bodyParameters setObject:user_pwd2 forKey:@"password2"];
    
    NSMutableURLRequest *request = [[AFHTTPRequestSerializer serializer] multipartFormRequestWithMethod:@"POST" URLString:[NSString stringWithFormat:@"%@", SIGNUP_API]
                                                                                             parameters:bodyParameters
                                                                              constructingBodyWithBlock:nil error:nil];
    
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    NSURLSessionUploadTask *uploadTask;
    uploadTask = [manager uploadTaskWithStreamedRequest:request progress:nil completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
        
        if (error) {
            NSLog(@"\n\n userRegister task error = %@\n\n", error);
            completion(NO, responseObject);
        }
        else {
            NSLog(@"등록 성공!");
            completion(YES, responseObject);
            
        }
    }];
    
    [uploadTask resume];
}


- (void)logIn:(NSString *)user_id pwd:(NSString *)user_pwd completion:(CompletionBlock)completion{
    
    NSMutableDictionary *bodyParameters = [[NSMutableDictionary alloc] init];
    
    [bodyParameters setObject:user_id forKey:@"username"];
    [bodyParameters setObject:user_pwd forKey:@"password"];
    
    NSMutableURLRequest *request = [[AFHTTPRequestSerializer serializer] multipartFormRequestWithMethod:@"POST" URLString:[NSString stringWithFormat:@"%@", LOGIN_API]
                                                                                             parameters:bodyParameters
                                                                              constructingBodyWithBlock:nil error:nil];
    
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    NSURLSessionUploadTask *uploadTask;
    uploadTask = [manager uploadTaskWithStreamedRequest:request progress:nil completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
        if (error) {
            NSLog(@"\n\n userLogin task error = %@\n\n", error);
            completion(NO, responseObject);
        }
        else {
            completion(YES, responseObject);
        }
    
    }];

    [uploadTask resume];
}

-(void)logOut:(NSString *)token completion:(CompletionBlock)completion{

    NSString *urlString = [NSString stringWithFormat:@"%@", LOGOUT_API];
    NSString *authURL = [NSString stringWithFormat:@"%@ %@",@"Token",token];
    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc]initWithSessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
//    [manager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [manager.requestSerializer setValue:authURL forHTTPHeaderField:@"Authorization"];
    
    [manager POST:urlString parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"success!");
        completion(YES, responseObject);

    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"error : %@", error);
        completion(NO, error);
    }];
}

-(void)getPostList:(NSString *)token pageNum:(NSNumber *) num completion:(CompletionBlock)completion{
    
    NSString *urlString = [NSString stringWithFormat:@"%@", POST_API];
    NSString *authURL = [NSString stringWithFormat:@"%@ %@",@"Token",token];
    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc]initWithSessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    //    [manager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [manager.requestSerializer setValue:authURL forHTTPHeaderField:@"Authorization"];
    [manager.requestSerializer setValue:[num stringValue] forHTTPHeaderField:@"page"];
    
    [manager GET:urlString parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"글목록 가져오기 success!");
        completion(YES, responseObject);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"error : %@", error);
        completion(NO, error);
    }];
    
}


@end
