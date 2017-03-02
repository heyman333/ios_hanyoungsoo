//
//  ViewController.m
//  UIGestureRecognizer
//
//  Created by HanYoungsoo on 2017. 3. 2..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UIGestureRecognizerDelegate ,UIImagePickerControllerDelegate,UINavigationControllerDelegate>

@property UIImagePickerController *cameraContorller;
@property UIImagePickerController *cameraContorller2;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.imageView.layer.cornerRadius = 125.0;
    
    self.imageView.layer.masksToBounds = YES;
    
    _cameraContorller = [[UIImagePickerController alloc] init];
//    _cameraContorller.sourceType = UIImagePickerControllerSourceTypeCamera;
    _cameraContorller.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    _cameraContorller.allowsEditing = YES;
    _cameraContorller.delegate = self;
    
    
    _cameraContorller2 = [[UIImagePickerController alloc] init];
    _cameraContorller2.sourceType = UIImagePickerControllerSourceTypeCamera;
//    _cameraContorller2.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    _cameraContorller2.allowsEditing = YES;
    _cameraContorller2.delegate = self;
    
    
    
    
    UITapGestureRecognizer *tapGesture;
    tapGesture =[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
    tapGesture.delegate = self;
    tapGesture.numberOfTapsRequired = 1;
    
    [self.view addGestureRecognizer:tapGesture];
 
    
}

-(void)handleTap:(UIGestureRecognizer *)sender{
    
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"사진선택방버을 선택하세요" message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    
    
    UIAlertAction *album = [UIAlertAction actionWithTitle:@"앨범보기" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [self presentViewController:_cameraContorller animated:YES completion:nil];
    }];
    
    UIAlertAction *photo = [UIAlertAction actionWithTitle:@"사진찍기" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [self presentViewController:_cameraContorller2 animated:YES completion:nil];
    }];
    
    [alertController addAction:album];
    [alertController addAction:photo];
    
    NSLog(@"탭탭탭탭");
    [self presentViewController:alertController animated:YES completion:nil];
    
}



-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info{
    NSLog(@"%@", info);

    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
    
    self.imageView.image = image;
    [picker dismissViewControllerAnimated:YES completion:nil];

}


-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    
    [picker dismissViewControllerAnimated:YES completion:nil];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
