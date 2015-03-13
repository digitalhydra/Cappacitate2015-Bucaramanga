//
//  NavegadorViewController.h
//  RestauranteUNAB
//
//  Created by Developer Cymetria on 13/03/15.
//  Copyright (c) 2015 Cymetria. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NavegadorViewController : UIViewController <UIWebViewDelegate>
@property (strong, nonatomic) IBOutlet UIWebView *navegador;

@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *precarga;
@end
