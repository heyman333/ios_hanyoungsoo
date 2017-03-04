//
//  DataCenter.m
//  DataSave Practice
//
//  Created by HanYoungsoo on 2017. 3. 3..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "DataCenter.h"

@implementation DataCenter


+(instancetype)sharedInstance{
    
    static DataCenter *dataCenter;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dataCenter = [[DataCenter alloc] init];
    });

    return dataCenter;
    
}

-(NSArray *)fileLoad{

    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *basePath = [paths objectAtIndex:0];
    
    NSString *docuPath = [basePath stringByAppendingString:@"Sample"];
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    if (![fileManager fileExistsAtPath:docuPath]) {
        NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"Sample" ofType:@"plist"];
        [fileManager copyItemAtPath:bundlePath toPath:docuPath error:nil];
    }
    
    NSArray *fileArr = [NSArray arrayWithContentsOfFile:docuPath];
    return fileArr;
    
}

-(void)fileSave:(NSString *)name phone:(NSString *) phone{
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *basePath = [paths objectAtIndex:0];
    
    NSString *docuPath = [basePath stringByAppendingString:@"Sample"];
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    if (![fileManager fileExistsAtPath:docuPath]) {
        NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"Sample" ofType:@"plist"];
        [fileManager copyItemAtPath:bundlePath toPath:docuPath error:nil];
    }
    
    NSMutableArray *fileArr = [[NSMutableArray alloc] init];
    
    [fileArr setArray: [NSArray arrayWithContentsOfFile:docuPath]];
    NSDictionary *dicTemp = @{@"name":name,@"phone":phone};
    [fileArr addObject:dicTemp];
    
    [fileArr writeToFile:docuPath atomically:NO];
}

@end
