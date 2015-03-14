//
//  ViewController.h
//  Mapas
//
//  Created by Developer Cymetria on 14/03/15.
//  Copyright (c) 2015 Cymetria. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate>

@property (strong, nonatomic) IBOutlet MKMapView *mapa;

@property CLLocationManager * locationManager;

@end

