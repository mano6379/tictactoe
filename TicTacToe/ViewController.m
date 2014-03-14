//
//  ViewController.m
//  TicTacToe
//
//  Created by Marion Ano on 3/13/14.
//  Copyright (c) 2014 Marion Ano. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    IBOutlet UILabel *myLabelOne;
    IBOutlet UILabel *myLabelTwo;
    IBOutlet UILabel *myLabelThree;
    IBOutlet UILabel *myLabelFour;
    IBOutlet UILabel *myLabelFive;
    IBOutlet UILabel *myLabelSix;
    IBOutlet UILabel *myLabelSeven;
    IBOutlet UILabel *myLabelEight;
    IBOutlet UILabel *myLabelNine;
    BOOL player;
    BOOL labelOneTwoThree;
}
@property (strong, nonatomic) IBOutlet UILabel *whichPlayerLabel;
@end
@implementation ViewController

- (void)viewDidLoad

{
    [super viewDidLoad];
   
    self.whichPlayerLabel.text = @"Make a Move Player One";
    [self.whichPlayerLabel sizeToFit];
    player = YES; //player 1 state
    
    //set game state value
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction) onLabelTapped:(UITapGestureRecognizer *)tapGestureRecognizer
{
    //the tapGestureRecognizer gets a point and assigns it to the variable, "point"
    CGPoint point = [tapGestureRecognizer locationInView: self.view];
     UILabel *somelabel = [self findLabelUsingPoint:point];
    
    if (player) {
        _whichPlayerLabel.text = @"Make a Move Player Two";
        somelabel.text = @"X";
        somelabel.textColor = [UIColor blueColor];
        [self whoWon];
        
    } else{
        _whichPlayerLabel.text = @"Make a Move Player One";
        somelabel.text = @"O";
        somelabel.textColor = [UIColor redColor];
        [self whoWon];
    }
    //change players
     player = !player;
    
    if (somelabel==myLabelOne) {
        NSLog(@"you've touched label one");
        
    } else if (somelabel == myLabelTwo){
        NSLog(@"you've touched label two");
        
    } else if (somelabel == myLabelThree){
        NSLog(@"you've touched label two");
        
    } else if (somelabel == myLabelFour){
        NSLog(@"you've touched label two");
        
    }else if (somelabel == myLabelFive){
        NSLog(@"you've touched label two");
        
    }else if (somelabel == myLabelSix){
    NSLog(@"you've touched label two");
        
    }else if (somelabel == myLabelSeven){
        NSLog(@"you've touched label two");
        
    }else if (somelabel == myLabelEight){
        NSLog(@"you've touched label two");
        
    } else {
        somelabel = myLabelNine;
        NSLog(@"you've touched label two");
    }
}


-(UILabel *) findLabelUsingPoint:(CGPoint)point
{
    //this code locates the label based on the CGPoint

    if (CGRectContainsPoint(myLabelOne.frame, point)){
        NSLog(@"1");
        return myLabelOne;
    } else if (CGRectContainsPoint(myLabelTwo.frame, point)){
            NSLog(@"2");
        return myLabelTwo;
    } else if (CGRectContainsPoint(myLabelThree.frame, point)){
        NSLog(@"2");
        return myLabelThree;
    } else if (CGRectContainsPoint(myLabelFour.frame, point)){
        NSLog(@"2");
        return myLabelFour;
    } else if (CGRectContainsPoint(myLabelFive.frame, point)){
        NSLog(@"2");
        return myLabelFive;
    } else if (CGRectContainsPoint(myLabelSix.frame, point)){
        NSLog(@"2");
        return myLabelSix;
    } else if (CGRectContainsPoint(myLabelSeven.frame, point)){
        NSLog(@"2");
        return myLabelSeven;
    } else if (CGRectContainsPoint(myLabelEight.frame, point)){
        NSLog(@"2");
        return myLabelEight;
    } else if (CGRectContainsPoint(myLabelNine.frame, point)){
        NSLog(@"2");
        return myLabelNine;
    } else
        return nil;
}

-(NSString*)whoWon
{
    
    //NSLog(@"in the whoWon method");
    
    BOOL xlabel123 = (([myLabelOne.text isEqualToString: @"X"]) && ([myLabelTwo.text isEqualToString: @"X"]) && ([myLabelThree.text  isEqualToString: @"X"]));
    
    BOOL xlabel456 = (([myLabelFour.text isEqualToString: @"X"]) && ([myLabelFive.text isEqualToString: @"X"]) && ([myLabelSix.text  isEqualToString: @"X"]));
    
    BOOL xlabel789 = (([myLabelSeven.text isEqualToString: @"X"]) && ([myLabelEight.text isEqualToString: @"X"]) && ([myLabelNine.text  isEqualToString: @"X"]));
    
    BOOL xlabel159 = (([myLabelOne.text isEqualToString: @"X"]) && ([myLabelFive.text isEqualToString: @"X"]) && ([myLabelNine.text  isEqualToString: @"X"]));
    
    BOOL xlabel258 = (([myLabelTwo.text isEqualToString: @"X"]) && ([myLabelFive.text isEqualToString: @"X"]) && ([myLabelEight.text  isEqualToString: @"X"]));
    
    BOOL xlabel369 = (([myLabelThree.text isEqualToString: @"X"]) && ([myLabelSix.text isEqualToString: @"X"]) && ([myLabelNine.text  isEqualToString: @"X"]));
    
    BOOL xlabel357 = (([myLabelThree.text isEqualToString: @"X"]) && ([myLabelFive.text isEqualToString: @"X"]) && ([myLabelSeven.text  isEqualToString: @"X"]));
    
    BOOL xlabel147 = (([myLabelOne.text isEqualToString: @"X"]) && ([myLabelFour.text isEqualToString: @"X"]) && ([myLabelSeven.text  isEqualToString: @"X"]));
    
    if (xlabel123) {
        NSLog (@"Player has won %hhd",xlabel123);
        return @"Player has won";
        
    } else if (xlabel456) {
        NSLog (@"Player has won %hhd",xlabel123);
        return @"Player has won";
        
    } else if (xlabel789) {
        NSLog (@"Player has won %hhd",xlabel123);
        return @"Player has won";
        
    } else if (xlabel159)  {
        NSLog (@"Player has won %hhd",xlabel123);
        return @"Player has won";
    
    }else if (xlabel258){
        NSLog (@"Player has won %hhd",xlabel123);
        return @"Player has won";
        
    }else if (xlabel369) {
        NSLog (@"Player has won %hhd",xlabel123);
        return @"Player has won";
        
    }else if (xlabel357) {
        NSLog (@"Player has won %hhd",xlabel123);
        return @"Player has won";
        
    }else if (xlabel147) {
        NSLog (@"Player has won %hhd",xlabel123);
        return @"Player has won";



    }
    else
        return nil;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
