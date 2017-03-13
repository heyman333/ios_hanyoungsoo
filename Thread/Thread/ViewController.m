//
//  ViewController.m
//  Thread
//
//  Created by HanYoungsoo on 2017. 3. 13..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *timeLB;
@property (weak, nonatomic) IBOutlet UIButton *timeBtn;
@property NSThread *timeThread;
@property NSInteger stoppedTime;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.stoppedTime = 0;
    
    self.timeThread = [[NSThread alloc] initWithBlock:^{
        
        for (NSInteger i = self.stoppedTime ; i<1000; i++) {
            sleep(1);
            dispatch_async(dispatch_get_main_queue(), ^{
                self.timeLB.text = [NSString stringWithFormat:@"%ld", i];
                self.stoppedTime = i;
            });
            if ([self.timeThread isCancelled]) {
                self.timeThread = nil;
                break;
            }
        }
    }];
}
- (IBAction)onTimeBtn:(UIButton *)sender {
    
    if ([sender.titleLabel.text isEqualToString:@"Start"]) {
              NSLog(@"star!!");
        
        if(self.timeThread == nil){
            NSLog(@"한번 취소 됐었네요");
            self.timeThread = [[NSThread alloc] initWithBlock:^{
                
                for (NSInteger i = self.stoppedTime ; i<1000; i++) {
                    sleep(1);
                    dispatch_async(dispatch_get_main_queue(), ^{
                        self.timeLB.text = [NSString stringWithFormat:@"%ld", i];
                        self.stoppedTime = i;
                    });
                    if ([self.timeThread isCancelled]) {
                        self.timeThread = nil;
                        break;
                    }
                }
            }];
            
            
            
            [self.timeThread start];
        }
        else{
            [self.timeThread start];
            
        }
        
        [self.timeBtn setTitle:@"Stop" forState:UIControlStateNormal];
    }
    else if([sender.titleLabel.text isEqualToString:@"Stop"]){
        NSLog(@"stop");
        [self.timeThread cancel];
        [self.timeBtn setTitle:@"Start" forState:UIControlStateNormal];
    }

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
