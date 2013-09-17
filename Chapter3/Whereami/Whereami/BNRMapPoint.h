//
//  BNRMapPoint.h
//  Whereami
//
//  Created by Rana Puri on 2013-09-15.
//  Copyright (c) 2013 Rana Puri. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface BNRMapPoint : NSObject <MKAnnotation>
{}

//A new designateed initalizer for instances of BNRMapPoint
-(id) initWithCoordinate:(CLLocationCoordinate2D)c title:(NSString *)t;

//A required property from MKAnnotation
@property (nonatomic, readonly) CLLocationCoordinate2D coordindate;

//This is an optional property for MKAnnotation
@property (nonatomic, copy) NSString *title;

@end
