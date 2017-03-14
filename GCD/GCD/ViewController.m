//
//  ViewController.m
//  GCD
//
//  Created by HanYoungsoo on 2017. 3. 13..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property dispatch_source_t timer;
@property (weak, nonatomic) IBOutlet UILabel *timeLB;
@property (weak, nonatomic) IBOutlet UIButton *timeBtn;
@property int gcdSecond;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _gcdSecond = 0 ;
    self.timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, dispatch_get_main_queue());
    
    dispatch_source_set_timer(self.timer, DISPATCH_TIME_NOW, 1 * NSEC_PER_SEC, 1 * NSEC_PER_SEC);
    
    dispatch_source_set_event_handler(self.timer, ^{
        [self changeText:[NSNumber numberWithInt:self.gcdSecond]];
        self.gcdSecond +=1;
        
    });
}


-(void)changeText:(NSNumber *)time{
    self.timeLB.text = [time stringValue];

}
- (IBAction)onTimeBtn:(UIButton *)sender {
    
    if ([sender.titleLabel.text isEqualToString:@"Restart"] || [sender.titleLabel.text isEqualToString:@"Start"]) {
        dispatch_resume(self.timer);
        [self.timeBtn setTitle:@"Pause" forState:UIControlStateNormal];
    }
    else if ([sender.titleLabel.text isEqualToString:@"Pause"]) {
        dispatch_suspend(self.timer);
        [self.timeBtn setTitle:@"Restart" forState:UIControlStateNormal];
    }
    
    

}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
