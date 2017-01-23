//
//  Dimensionalshapes.m
//  MySixthIosStudy
//
//  Created by HanYoungsoo on 2017. 1. 23..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "Dimensionalshapes.h"

@implementation Dimensionalshapes

/*
 도형의 수치를 Get하는 메소드들 입니다.
*/


//square
- (CGFloat)getSquarA:(CGFloat)len{
    
    return len * len;
}

- (CGFloat)getSquarP:(CGFloat)len{
    
    return len * 4;
}

//Rectangle
- (CGFloat)getRectangleA:(CGFloat)xLen yLen:(CGFloat)yLen {
    
    return xLen * yLen;
}

- (CGFloat)getRectangleP:(CGFloat)xLen yLen:(CGFloat)yLen {
    
    return xLen * 2 + yLen * 2;
}
//Circle
- (CGFloat)getCircleA:(CGFloat)rad{
    
    return rad * rad * 3.14;
}

- (CGFloat)getSquarC:(CGFloat)rad{
    
    return 2 * 3.14 * rad;
}
//Triangle
- (CGFloat)getTriagleA:(CGFloat)bottom heigt:(CGFloat)height{
    
    return bottom * height * 0.5;
}

//Trapzoid
- (CGFloat)getTrapzoidA:(CGFloat)above bottom : (CGFloat) bottom height:(CGFloat) height{
    
    return (above + bottom) * height * 0.5;
}

//Cube
- (CGFloat)getCubeV:(CGFloat)len{
    return pow(len ,3);
}

@end
