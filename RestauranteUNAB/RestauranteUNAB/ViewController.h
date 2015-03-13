//
//  ViewController.h
//  RestauranteUNAB
//
//  Created by Developer Cymetria on 13/03/15.
//  Copyright (c) 2015 Cymetria. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeViewController.h"

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *userText;

@property HomeViewController * home;

@end

