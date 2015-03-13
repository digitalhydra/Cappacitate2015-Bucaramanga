//
//  ViewController.m
//  MiPrimeraApp
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
    
    NSString * name = @"Giovanny Suarez";
    NSLog(@"%@", name);
    
    NSInteger numero = 5;
    int edad = 28;
    NSLog(@" %@ tiene %i, y saco %ld en el quiz", name, edad, (long)numero);
    
    NSArray * ciudades = @[@"Bucaramnga", @"Medellin", @"Bogota"];
    NSLog(@"%@", [ciudades objectAtIndex:0]);
    
    //ciudaes.objectAtIndex(1)
    
    NSMutableArray * tareas = [[NSMutableArray alloc] initWithArray:@[@"Programar", @"Comer", @"Dormir"]];
    [tareas removeObjectAtIndex:1];
    [tareas addObject:@"Brake"];
    NSLog(@"%@", tareas);
    
    NSDictionary * usuario = @{
                                @"nombre": @"pepito",
                                @"cedula" : @"666",
                                @"ciudad" : @"Bucaramanga"
        
                                };
    

    NSLog(@"%@", [usuario objectForKey:@"cedula"]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
