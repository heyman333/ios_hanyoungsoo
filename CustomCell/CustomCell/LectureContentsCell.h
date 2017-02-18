//
//  LectureContentsCell.h
//  CustomCell
//
//  Created by HanYoungsoo on 2017. 2. 17..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LectureContentsCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *lectureImg;
@property (weak, nonatomic) IBOutlet UILabel *lectureTtitle;
@property (weak, nonatomic) IBOutlet UIImageView *lectureGrade;
@property (weak, nonatomic) IBOutlet UILabel *lectureReputaionNum;

@property (weak, nonatomic) IBOutlet UILabel *lecturePersonNum;


@end
