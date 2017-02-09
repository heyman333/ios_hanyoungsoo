//
//  main.m
//  BubbleSort
//
//  Created by HanYoungsoo on 2017. 2. 9..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BubbleSort.h"

int main(int argc, const char * argv[]) {
    NSMutableArray *mutableArray = [[NSMutableArray alloc] initWithArray:@[@10,@20,@1,@2,@30,@95,@5]];

    NSMutableArray *sortedArray =  [BubbleSort bubbleSort:mutableArray];
    
    for (NSNumber *num in sortedArray) {
        NSLog(@"%@",num);
    }
    
    return 0;
}

