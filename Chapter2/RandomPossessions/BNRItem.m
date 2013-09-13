//
//  BNRItem.m
//  RandomPossessions
//
//  Created by Rana Puri on 2013-09-05.
//  Copyright (c) 2013 Rana Puri. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

@synthesize itemName, serialNumber, valueInDollars, dateCreated,container,containedItem;

//Overridder Description
-(NSString *) description{
    
    NSString * descriptionString = [[NSString alloc] initWithFormat:@"%@ (%@) worth $%d, recorded on %@", itemName, serialNumber, valueInDollars, dateCreated];
    return descriptionString;
    
}

//This is our designated initializor
-(id) initWithItemName:(NSString *) name
       valueInDollars:(int) value
         serialNumber:(NSString *) sNumber{
    
    //Init yourself first by calling your super init class.
    self = [super init];
    
    if(self){
        //Assign the method variables
        [self setSerialNumber:sNumber];
        [self setItemName:name];
        [self setValueInDollars:value];
    }
    
    //And return yourself; return the POINTER of yourself
    return self;
}

-(id) init{
    return [self initWithItemName:@"Item" valueInDollars:-1 serialNumber:@""];
}

+(id) RandomItem{
    
    NSArray *randomAdjectiveList = [NSArray arrayWithObjects:@"Fluffy",@"Rusty",@"Shiny", nil];
    
    NSArray *randomNounList = [NSArray arrayWithObjects:@"Bear",@"Spork",@"Mac" , nil];
    
    NSInteger adjectiveIndex = rand()% [randomAdjectiveList count];
    NSInteger nounIndex = rand()% [randomNounList count];
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@",[randomAdjectiveList objectAtIndex:adjectiveIndex], [randomNounList objectAtIndex:nounIndex]];
    
    NSString *serialNumber =@"<Random Serial Number>";
    
    int randomValue = rand()%100;
    
    //Note the use of SELF here... to ensure that if we subclass, we don't screw it up...
    BNRItem *randomItem = [[self alloc] initWithItemName:randomName valueInDollars:randomValue serialNumber:serialNumber];
    
    return randomItem;
    
    
}

//Overriding DeAlloc to see what happens when the object is removed
-(void) dealloc{
    NSLog(@" Destroyed: %@", self);
}


//Set the incoming pointer of continedItem to the instance variable
-(void) setContainedItem: (BNRItem *)i{
    containedItem =i;
    //When given an item to contain, the contained item will be given a pointer to its container.
    [i setContainer:self];
}
@end
