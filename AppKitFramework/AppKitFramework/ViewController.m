//
//  ViewController.m
//  AppKitFramework
//
//  Created by HanYoungsoo on 2017. 3. 7..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

#import "ViewController.h"
#import "NewAnnotaion.h"
#import <MapKit/MapKit.h>

@interface ViewController ()
<CLLocationManagerDelegate, MKMapViewDelegate>
@property CLLocationManager *locationManager;
@end
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _locationManager = [[CLLocationManager alloc] init];
    _locationManager.delegate = self;
    self.myMapView.delegate = self;
    _locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    [_locationManager requestWhenInUseAuthorization];
    [_locationManager startUpdatingLocation];
    [_locationManager startUpdatingLocation];
    self.myMapView.showsUserLocation = YES;
}

-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations{
    
    
    CLLocationCoordinate2D cordinate = CLLocationCoordinate2DMake(locations.lastObject.coordinate.latitude,locations.lastObject.coordinate.longitude);

    NewAnnotaion *myAnnotation = [[NewAnnotaion alloc] init];
    [myAnnotation setCoordinate:cordinate];
    
    MKCoordinateSpan span= MKCoordinateSpanMake(0.01, 0.01);
    
    MKCoordinateRegion region = MKCoordinateRegionMake(cordinate, span);
    [self.myMapView setRegion:region];
    [self.myMapView addAnnotation:myAnnotation];
    [self.locationManager stopUpdatingLocation];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
