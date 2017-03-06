//
//  DataCenter.h
//  DataSave Practice
//
//  Created by HanYoungsoo on 2017. 3. 3..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger , MyEnum){
    MyEnumValueA,
    MyEnumValueB,
    MyEnumValueC,
};

@interface DataCenter : NSObject
+(instancetype)sharedInstance;
-(NSArray *)fileLoad;
-(void)fileSave:(NSString *)name phone:(NSString *) phone;
@end
