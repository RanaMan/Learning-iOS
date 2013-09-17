//
//  HypnosisView.m
//  Hypnosister
//
//  Created by Rana Puri on 2013-09-16.
//  Copyright (c) 2013 Rana Puri. All rights reserved.
//

#import "HypnosisView.h"

@implementation HypnosisView


@synthesize circleColor;

//Overrid init as we want to set the background color to clear
-(id)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    
    if(self){
        [self setBackgroundColor:[UIColor clearColor]];
        [self setCircleColor:[UIColor lightGrayColor]];
    }
    return self;
}


//Overriding the drawRect application as we want to draw something new and exciting.
-(void) drawRect:(CGRect)dirtyRect{
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGRect bounds = [self bounds];
    
    //Figure out the center of the bounds rectangle
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width /2.0;
    center.y = bounds.origin.y + bounds.size.height /2.0;
    
    
    //The radius of the curcke should be nearly as big as the view;
    float maxRadius = hypot(bounds.size.width, bounds.size.height) /2.0;
    
    //The thickness of the line should be 10 pts wide
    CGContextSetLineWidth(ctx, 10);
    
    //The color of the line should be gray (red/green/blue =.6 alpha =1.0
    //CGContextSetRGBStrokeColor(ctx, 0.6, 0.6, 0.6, 1.0);
    //[[UIColor lightGrayColor] setStroke];
    [[self circleColor] setStroke];
    
    
    //Draw Concurrent circles from the outside in
    for(float currentRadius = maxRadius; currentRadius >0; currentRadius -= 20){
        
        //add a path to the context
        CGContextAddArc(ctx, center.x, center.y, currentRadius, 0.0, M_PI*2.0, YES);
        CGContextStrokePath(ctx);
    }
    
    //Create the string
    NSString *text =@"You are getting sleepy";
    
    //Create the font to draw it in
    UIFont *font = [UIFont boldSystemFontOfSize:28];
    
    CGRect textRect;
    
    //Houw big is the string when we draw it in this font?
    textRect.size = [text sizeWithFont:font];
    
    //Lets' put that string in the center of the view
    textRect.origin.x = center.x - textRect.size.width /2.0;
    textRect.origin.y = center.y - textRect.size.height /2.0;
    
    //Set the backfill color of the current context to black
    [[UIColor blackColor] setFill];
    
    //add a shadow
    CGSize offset = CGSizeMake(3, 4);
    
    //the shadow will be a dark gray colour
    CGColorRef color = [[UIColor darkGrayColor] CGColor];
    
    CGContextSetShadowWithColor(ctx, offset, 2.0, color);
    
    //Draw the string
    [text drawInRect:textRect withFont:font];
    
}

-(BOOL) canBecomeFirstResponder{
    return YES;
}

@end
