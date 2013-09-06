//
//  QuizViewController.m
//  Quiz
//
//  Created by Rana Puri on 2013-09-03.
//  Copyright (c) 2013 Rana Puri. All rights reserved.
//

#import "QuizViewController.h"

@implementation QuizViewController


//This method is called when the appDeligate creates the QVC class... so obviously we want to have the arrays populated here...

-(id) initWithNibName: (NSString *) nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    
    //Call the init method of the superclass
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if(self){
        
        //Create two arrays and make the pointers to them;
        questions = [[NSMutableArray alloc] init];
        answers = [[NSMutableArray alloc] init];
        
        [questions addObject:@"What is 7+7?"];
        [answers addObject:@"14"];
        
        [questions addObject:@"What is the capital of Canada?"];
        [answers addObject:@"Ottawa"];
        
        [questions addObject:@"What is Gin made from?"];
        [answers addObject:@"Botanicals"];
        
    }
    return self;
}

//This method is called when the user selects the show next QUESTION button... see if you can guess what it should do before you read it....
-(IBAction)showQuestion:(id)sender{
    
    //    This methods should
    //        1. Clear the "Answer Label"
    //        2. Increase the question index, and if the index is over the size of the question array, restart it...
    //        3. Show the next question
        
    if(currentQuestionIndex >= [questions count]){
        currentQuestionIndex =0;
    }
    [answerField setText:@"???"];
    [questionField setText:[questions objectAtIndex:currentQuestionIndex]];
    currentQuestionIndex++;
    NSLog(@"The current question is %d",currentQuestionIndex);
}


//This method is called when the user selects the show ANSWER button
-(IBAction)showAnswer:(id)sender{
    [answerField setText:[answers objectAtIndex:currentQuestionIndex-1]];
}

@end

