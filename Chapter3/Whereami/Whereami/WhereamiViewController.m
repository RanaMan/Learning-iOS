//
//  WhereamiViewController.m
//  Whereami
//
//  Created by Rana Puri on 2013-09-10.
//  Copyright (c) 2013 Rana Puri. All rights reserved.
//

#import "WhereamiViewController.h"

@implementation WhereamiViewController

-(id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
 
    if(self){
        
        //Create location manager Object
        locationManager = [[CLLocationManager alloc] init];
        
      
        //Set the delegate of the location manager to be the controller (self)
        [locationManager setDelegate:self];
        
        //And we want it to be as accurate as possible
        [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
        
        [locationManager setDistanceFilter:kCLLocationAccuracyNearestTenMeters*5];
        
        //Tell our manager to start looking for its location immedieatly.
        [locationManager startUpdatingLocation];
        if ([CLLocationManager headingAvailable]) {
            [locationManager startUpdatingHeading];
        }else{
            NSLog(@"Heading is not supported.");
        }
        
    }
    return self;
}

-(void)locationManager:(CLLocationManager *)manager
   didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation{
    NSLog(@"Location: %@",newLocation);
}

- (void)locationManager:(CLLocationManager *)manager didUpdateHeading:(CLHeading *)newHeading{
    NSLog(@"Heading: %@", newHeading);
}

-(void)locationManager:(CLLocationManager *)manager
      didFailWithError:(NSError *)error{
    NSLog(@"Could not find location: %@", error);
}

-(void)dealloc{
    [locationManager setDelegate:nil];
}


@end
