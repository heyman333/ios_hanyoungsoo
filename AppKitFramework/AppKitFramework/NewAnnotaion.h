//
//  NewAnnotaion.h
//  AppKitFramework
//
//  Created by HanYoungsoo on 2017. 3. 7..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
@interface NewAnnotaion : NSObject
<MKAnnotation>
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;
//readonly는 _변수와 getter가 생성된다..setter는 생성 안된다.
- (void)setCoordinate:(CLLocationCoordinate2D)newCoordinate;
@end
