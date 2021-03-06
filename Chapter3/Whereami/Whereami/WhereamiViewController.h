//
//  WhereamiViewController.h
//  Whereami
//
//  Created by Rana Puri on 2013-09-10.
//  Copyright (c) 2013 Rana Puri. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface WhereamiViewController : UIViewController <CLLocationManagerDelegate, MKMapViewDelegate, UITextFieldDelegate>
{
    CLLocationManager *locationManager;
    
    IBOutlet MKMapView *worldView;
    IBOutlet UIActivityIndicatorView *activityIndicator;
    IBOutlet UITextField *locationTitleField;
}

-(void) findLocation;
-(void) foundLocation:(CLLocation *)loc;

@end
