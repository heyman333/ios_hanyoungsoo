//
//  DataCenter.m
//  profileSettingTable
//
//  Created by HanYoungsoo on 2017. 2. 23..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "DataCenter.h"

@interface DataCenter ()
@end

@implementation DataCenter

+ (instancetype)sharedInstance{
    static DataCenter *dataCenter;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dataCenter = [[DataCenter alloc] init];
    });
    return dataCenter;
}

@end
