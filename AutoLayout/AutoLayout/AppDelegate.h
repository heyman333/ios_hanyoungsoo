//
//  AppDelegate.h
//  AutoLayout
//
//  Created by HanYoungsoo on 2017. 2. 28..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

