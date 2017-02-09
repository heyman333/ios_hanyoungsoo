//
//  BubbleSort.m
//  BubbleSort
//
//  Created by HanYoungsoo on 2017. 2. 9..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "BubbleSort.h"


@interface BubbleSort ()
@property NSMutableArray *orderedArray;

@end

@implementation BubbleSort


+ (NSMutableArray *)bubbleSort:(NSMutableArray *)array{
    
    for(int i = 0 ; i<array.count-1 ; i++) {
        for(int j = 0 ; j < array.count-1 ; j++){
            if (array[j] > array[j+1]) {
                NSNumber *temp = array[j];
                array[j] = array[j+1];
                array[j+1] = temp;
            }
        }
    }

    return array;
}



@end
