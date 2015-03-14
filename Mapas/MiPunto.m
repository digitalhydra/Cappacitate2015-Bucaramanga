//
//  MiPunto.m
//  Mapas
//
//  Created by Developer Cymetria on 14/03/15.
//  Copyright (c) 2015 Cymetria. All rights reserved.
//

#import "MiPunto.h"

@implementation MiPunto

-(id)initInBucaramanga{
    self = [super init];
    if (self) {
        _coordinate = CLLocationCoordinate2DMake(7.11392, -73.1198);
        _title = @"La ciudad bonita";
    }
    return self;
}
@end
