//
//  DataCenter.h
//  NetworkMiniProject
//
//  Created by HanYoungsoo on 2017. 3. 16..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NetworkManager.h"

@interface DataCenter : NSObject
@property NetworkManager *nManager;
@property NSUserDefaults *userdefaults;
+(instancetype)sharedInstance;
@end
