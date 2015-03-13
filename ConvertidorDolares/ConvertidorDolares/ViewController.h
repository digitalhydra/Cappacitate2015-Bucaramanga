//
//  ViewController.h
//  ConvertidorDolares
//
//  Created by Developer Cymetria on 13/03/15.
//  Copyright (c) 2015 Cymetria. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Converter.h"

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *pesosText;

@property (strong, nonatomic) IBOutlet UITextField *trmText;

- (IBAction)calculateDolarButton:(id)sender;

@property Converter * calculate;

@property (strong, nonatomic) IBOutlet UILabel *resultText;

@end

