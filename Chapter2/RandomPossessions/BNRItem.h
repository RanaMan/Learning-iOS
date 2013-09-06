//
//  BNRItem.h
//  RandomPossessions
//
//  Created by Rana Puri on 2013-09-05.
//  Copyright (c) 2013 Rana Puri. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
{
    NSString *itemName;
    NSString *serialNumber;
    int valueInDollars;
    NSDate *dateCreated;
}

//Define Accessor Methods:
-(NSString *)itemName;
-(NSString *)serialNumber;
-(int)valueinDollars;
-(NSDate *) dateCreated;

-(void) setItemName: (NSString *) newName;
-(void) setSerialNumber: (NSString *) newSerialNuber;
-(void) setValueInDollars: (int) newValue;



@end
