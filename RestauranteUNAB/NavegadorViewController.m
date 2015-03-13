//
//  NavegadorViewController.m
//  RestauranteUNAB
//
//  Created by Developer Cymetria on 13/03/15.
//  Copyright (c) 2015 Cymetria. All rights reserved.
//

#import "NavegadorViewController.h"

@interface NavegadorViewController ()

@end

@implementation NavegadorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _navegador.delegate = self;
    _navegador.hidden = YES;
    NSURL * url = [NSURL URLWithString:@"http://apple.com"];
    NSURLRequest * request = [[NSURLRequest alloc] initWithURL:url];
    
    [_navegador loadRequest:request];
    
}
-(void)webViewDidStartLoad:(UIWebView *)webView{
    [_precarga startAnimating];
}
-(void)webViewDidFinishLoad:(UIWebView *)webView{
    [_precarga stopAnimating];
    _precarga.hidden = YES;
    _navegador.hidden = NO;
    
    NSString * js = @"alert('Hoja desde JS');";
    [_navegador stringByEvaluatingJavaScriptFromString:js];

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
