//
//  WhereamiViewController.m
//  Whereami
//
//  Created by Rana Puri on 2013-09-10.
//  Copyright (c) 2013 Rana Puri. All rights reserved.
//

#import "WhereamiViewController.h"
#import "BNRMapPoint.h"

@implementation WhereamiViewController


-(void) findLocation{
    [locationManager startUpdatingLocation];
    [activityIndicator startAnimating];
    [locationTitleField setHidden:YES];
}

-(void) foundLocation:(CLLocation *)loc{
    
    CLLocationCoordinate2D cord = [loc coordinate];
    
    //Create an instance of BNRMapPoint with the correct Data
    BNRMapPoint *mp = [[BNRMapPoint alloc] initWithCoordinate:cord title:[locationTitleField text]];
    
    [worldView addAnnotation:mp];
    
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(cord, 250, 250);
    
    [worldView setRegion:region animated:YES];
    
    //Reset the UI
    [locationTitleField setText:@""];
    [activityIndicator stopAnimating];
    [locationTitleField setHidden:NO];
    [locationManager stopUpdatingLocation];
}


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
        
        
        
        
    }
    return self;
}

-(void)locationManager:(CLLocationManager *)manager
   didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation{
    NSLog(@"Location: %@",newLocation);
    
    NSTimeInterval t = [[newLocation timestamp] timeIntervalSinceNow];
    
    if(t<-180){
        return;
    }
    [self foundLocation:newLocation];
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


-(void) viewDidLoad{
    [worldView setShowsUserLocation:YES];
}

- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation{
    //Ok but how do we actually zoom?
    
    //Get our current location from the CLLocation instance
    CLLocationCoordinate2D loc = [userLocation coordinate];
    
    //Create the region with the help of the coordate
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(loc, 250, 250);
    
    [worldView setMapType:MKMapTypeSatellite];
    
    //Update the map	
    [worldView setRegion:region animated:YES];
    
    
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    //This method ins't implemented yet, but will be soon
    [self findLocation];
    
    //Hids the Keyboard.
    [textField resignFirstResponder];

    return YES;
}
@end
