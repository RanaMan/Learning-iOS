//
//  main.m
//  RandomPossessions
//
//  Created by Rana Puri on 2013-09-05.
//  Copyright (c) 2013 Rana Puri. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        //Create the array
        NSMutableArray *itemList = [[NSMutableArray alloc] init];
        
        //Add some objects
        [itemList addObject:@"One"];
        [itemList addObject:@"Two"];
        [itemList addObject:@"Three"];
        
        //Insert an Object
        [itemList insertObject:@"Zero"
                      atIndex:0];
      
        //Loop through the array
        for(NSString *s in itemList){
            NSLog(@"Looking at value %@", s);
        }
        
        BNRItem *p = [[BNRItem alloc] init];
        [p setItemName:@"Big Red Sofa"];
        [p setValueInDollars:500];
        [p setSerialNumber:@"abc123"];
        
        NSLog(@" %@ %d %@ %@ ", [p itemName],[p valueinDollars],[p serialNumber],[p dateCreated] );
        
        //Removed the array
        itemList = nil;
        
    }
    return 0;
}

