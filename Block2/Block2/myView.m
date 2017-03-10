//
//  myView.m
//  Block2
//
//  Created by HanYoungsoo on 2017. 3. 10..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "myView.h"

@implementation myView
-(void)changeTextAction:(TextBlock)text{
    NSLog(@"액션버튼 클릭");
    self.tempBlock = text;
}

- (IBAction)clicked:(id)sender {
    NSLog(@"버튼이 눌렸습니다.");
    self.label.text = self.tempBlock();
}
@end
