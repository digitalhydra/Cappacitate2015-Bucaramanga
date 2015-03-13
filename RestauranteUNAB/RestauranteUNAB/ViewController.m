//
//  ViewController.m
//  RestauranteUNAB
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
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    /*_home = [segue destinationViewController];*/
    NSLog(@"%@", [segue.destinationViewController viewControllers]);
    _home = [[segue.destinationViewController viewControllers] objectAtIndex:0];
    _home.dataTransfer = _userText.text;

}
@end
