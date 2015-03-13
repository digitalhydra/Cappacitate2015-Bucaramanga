//
//  ViewController.m
//  ConvertidorDolares
//
//  Created by Developer Cymetria on 13/03/15.
//  Copyright (c) 2015 Cymetria. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _calculate = [[Converter alloc] init];
    //_calculate= [Converter new];

    [_calculate calculateResultInDollars:50000 andTRM:2600];
    NSLog(@"%f", _calculate.result);
    
    NSLog(@"%f", [_calculate calculateResultInPesos:19.23]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
