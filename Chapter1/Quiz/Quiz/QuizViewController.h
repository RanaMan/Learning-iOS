//
//  QuizViewController.h
//  Quiz
//
//  Created by Rana Puri on 2013-09-03.
//  Copyright (c) 2013 Rana Puri. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizViewController : UIViewController
{
    int currentQuestionIndex;
    
    //The Model Objects
    NSMutableArray *questions;
    NSMutableArray *answers;
    
    //The View Objects
    IBOutlet UILabel *questionField;
    IBOutlet UILabel *answerField;
}

-(IBAction)showQuestion:(id)sender;
-(IBAction)showAnswer:(id)sender;

@end
