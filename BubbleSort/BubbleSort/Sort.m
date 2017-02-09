//
//  BubbleSort.m
//  BubbleSort
//
//  Created by HanYoungsoo on 2017. 2. 9..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "Sort.h"


@interface Sort ()
@property NSMutableArray *orderedArray;

@end

@implementation Sort


+ (NSMutableArray *)bubbleSort:(NSMutableArray *)array{
    
    for(int i = 0 ; i<array.count-1 ; i++) {
        for(int j = 0 ; j < array.count-1-i; j++){
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
