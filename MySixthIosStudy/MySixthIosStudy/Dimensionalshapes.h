//
//  Dimensionalshapes.h
//  MySixthIosStudy
//
//  Created by HanYoungsoo on 2017. 1. 23..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dimensionalshapes : NSObject


//square
- (CGFloat)getSquarA:(CGFloat)len;
- (CGFloat)getSquarP:(CGFloat)len;

//Rectangle
- (CGFloat)getRectangleA:(CGFloat)xLen yLen:(CGFloat)yLen;
- (CGFloat)getRectangleP:(CGFloat)xLen yLen:(CGFloat)yLen;
//Circle
- (CGFloat)getCircleA:(CGFloat)rad;
- (CGFloat)getSquarC:(CGFloat)rad;
//Triangle
- (CGFloat)getTriagleA:(CGFloat)bottom heigt:(CGFloat)height;
//Trapzoid
- (CGFloat)getTrapzoidA:(CGFloat)above bottom : (CGFloat) bottom height:(CGFloat) height;
//Cube
- (CGFloat)getCubeV:(CGFloat)len;



@end
