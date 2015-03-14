//
//  ViewController.m
//  Mapas
//
//  Created by Developer Cymetria on 14/03/15.
//  Copyright (c) 2015 Cymetria. All rights reserved.
//

#import "ViewController.h"
#import "MiPunto.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    _mapa.delegate = self;
    MiPunto * bucara = [[MiPunto alloc] initInBucaramanga];
    [_mapa addAnnotation:bucara];
    _locationManager = [[CLLocationManager alloc] init];
    _locationManager.delegate = self;
    [_locationManager requestAlwaysAuthorization];
    [_mapa setShowsUserLocation:YES];
}
-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation{
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance([userLocation coordinate], 300, 300);
    [_mapa setRegion:region animated:YES];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
