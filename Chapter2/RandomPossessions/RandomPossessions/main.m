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
        
   
        BNRItem *backpack = [[BNRItem alloc] init];
        [backpack setItemName:@"Backpack"];
        
        BNRItem *calculator = [[BNRItem alloc] init];
        [backpack setItemName:@"Calculator"];

        
        //and another! Retain CYCLE
        [backpack setContainedItem:calculator];

        backpack = nil;
        NSLog(@"Container %@ ", [calculator container]);
        
        calculator = nil;
    }
    return 0;
}

