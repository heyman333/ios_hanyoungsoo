//
//  DataCenter.h
//  profileSettingTable
//
//  Created by HanYoungsoo on 2017. 2. 23..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataCenter : NSObject

+ (instancetype)sharedInstance;

@property NSString *profileSettinfPossible;
@property NSString *admitFriendsPossible;
@property NSString *syncFriendsfPossible;
@end
