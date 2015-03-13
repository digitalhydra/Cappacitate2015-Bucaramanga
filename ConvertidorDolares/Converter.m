//
//  Converter.m
//  ConvertidorDolares
//
//  Created by Developer Cymetria on 13/03/15.
//  Copyright (c) 2015 Cymetria. All rights reserved.
//

#import "Converter.h"

@interface Converter ()
{
    int valorTRM;
}
@end

@implementation Converter

-(instancetype)init{
    valorTRM = 2600;
    return self;
}
-(void)calculateResultInDollars:(NSInteger)pesos andTRM:(float)trm{
    
    _result = pesos / trm;

}
-(float)calculateResultInPesos:(float)dollars{
    
    return dollars * valorTRM;
}
@end
