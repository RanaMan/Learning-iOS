//
//  BNRMapPoint.m
//  Whereami
//
//  Created by Rana Puri on 2013-09-15.
//  Copyright (c) 2013 Rana Puri. All rights reserved.
//

#import "BNRMapPoint.h"

@implementation BNRMapPoint

@synthesize coordinate, title;

-(id) initWithCoordinate:(CLLocationCoordinate2D)c title:(NSString *)t{
    self = [super init];
    
    if(self){
        coordinate =c;
        [self setTitle:t];
    }
    return self;
   
}

-(id)init{
    return [self initWithCoordinate:CLLocationCoordinate2DMake(43.07,-89.32) title:@"My HomeTown"];
}

@end
