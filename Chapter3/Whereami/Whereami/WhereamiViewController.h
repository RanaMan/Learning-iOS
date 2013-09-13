//
//  WhereamiViewController.h
//  Whereami
//
//  Created by Rana Puri on 2013-09-10.
//  Copyright (c) 2013 Rana Puri. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface WhereamiViewController : UIViewController <CLLocationManagerDelegate>
{
    CLLocationManager *locationManager;
}



@end
