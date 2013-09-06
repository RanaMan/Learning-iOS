//
//  BNRItem.m
//  RandomPossessions
//
//  Created by Rana Puri on 2013-09-05.
//  Copyright (c) 2013 Rana Puri. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

-(NSString *)itemName{
    return itemName;
}

-(NSString *)serialNumber{
    return serialNumber;
}

-(int)valueinDollars{
    return valueInDollars;
}

-(NSDate *) dateCreated{
    return dateCreated;
}

-(void) setItemName: (NSString *) newName{
    itemName = newName;
}

-(void) setSerialNumber: (NSString *) newSerialNuber{
    serialNumber = newSerialNuber;
}

-(void) setValueInDollars: (int) newValue{
    valueInDollars = newValue;
}



@end
