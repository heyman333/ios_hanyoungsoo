//
//  ViewController.m
//  Network
//
//  Created by HanYoungsoo on 2017. 3. 15..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UIImageView *image2;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    NSURLSessionTask *task = [session dataTaskWithURL:[NSURL URLWithString:@"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQj7RuDPBij1gqsPpppc8_wpqe5NJaIx99Z5F1_4CYVr1jAiOKESA"] completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error){
        if (data != nil) {
            dispatch_async(dispatch_get_main_queue(), ^{
                self.image.image = [UIImage imageWithData:data];
            });
        }
                        }];
        
        NSURLSessionTask *task2 = [session dataTaskWithURL:[NSURL URLWithString:@"http://ojsfile.ohmynews.com/STD_IMG_FILE/2016/1113/IE002050780_STD.jpg"] completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
            
            if (data != nil) {
                dispatch_async(dispatch_get_main_queue(), ^{
                    self.image2.image = [UIImage imageWithData:data];
                });
            }
        }];
        
        
        
        
        
        
        
        
        [task resume];
        [task2 resume];
        
        
        
    }
                              
                              
                              - (void)didReceiveMemoryWarning {
                                  [super didReceiveMemoryWarning];
                                  // Dispose of any resources that can be recreated.
                              }
                              
                              
                              @end
