//
//  BoardTableViewCell.h
//  NetworkMiniProject
//
//  Created by HanYoungsoo on 2017. 3. 16..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BoardTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *contentsImg;
@property (weak, nonatomic) IBOutlet UILabel *contentsTitle;
@property (weak, nonatomic) IBOutlet UILabel *writter;

@end
