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
   }

-(id)initWithItemName:(NSString *) name
            valueInDollars:(int) value
            serialNumber:(NSString *) sNumber;

@property (nonatomic, strong) BNRItem *containedItem;
@property (nonatomic, weak) BNRItem *container;

@property (nonatomic, strong) NSString *itemName;
@property (nonatomic, strong) NSString *serialNumber;
@property (nonatomic) int valueInDollars;
@property (nonatomic, readonly, strong) NSDate *dateCreated;

//First Class method
+(id)RandomItem;


@end
