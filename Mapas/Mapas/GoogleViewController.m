//
//  GoogleViewController.m
//  Mapas
//
//  Created by Developer Cymetria on 14/03/15.
//  Copyright (c) 2015 Cymetria. All rights reserved.
//

#import "GoogleViewController.h"
#import <GoogleMaps/GoogleMaps.h>

@interface GoogleViewController ()
{
    GMSMapView * mapa;
}

@end

@implementation GoogleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    GMSCameraPosition * camara = [GMSCameraPosition cameraWithLatitude:7.1392 longitude:-73.4198 zoom:6];
    mapa = [GMSMapView mapWithFrame:CGRectZero camera:camara];
    mapa.myLocationEnabled = YES;
    self.view = mapa;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
