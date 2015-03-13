//
//  Converter.h
//  ConvertidorDolares
//
//  Created by Developer Cymetria on 13/03/15.
//  Copyright (c) 2015 Cymetria. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Converter : NSObject

@property float result;


-(void) calculateResultInDollars:(NSInteger)pesos andTRM:(float)trm;
-(float) calculateResultInPesos:(float) dollars;

@end
