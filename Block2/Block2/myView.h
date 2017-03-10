//
//  myView.h
//  Block2
//
//  Created by HanYoungsoo on 2017. 3. 10..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NSString *(^TextBlock)(void);
@interface myView : UIView
@property (nonatomic,weak) IBOutlet UIButton *btn;
@property (nonatomic,weak) IBOutlet UILabel *label;
@property TextBlock tempBlock;
-(void)changeTextAction:(TextBlock)text;
@end
