//
//  ViewController.m
//  AlphaTouch
//
//  Created by Vishal Sunak on 12/24/12.
//  Copyright (c) 2012 Vishal Sunak. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor yellowColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadView
{
    CGRect viewRect = [[UIScreen mainScreen] bounds];
    UIView *view = [[UIView alloc] initWithFrame:viewRect];    //creates a view the size of the whole screen
    self.view = view;

}

//This method below writes out a log message when the screen it touched... so cool!
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"On Touch");
}

//This method below writes out a log message after the touch ends
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"After touch");
    
    //the following code to randomize the alpha transparency:
    self.view.alpha = ((double)arc4random() / 0x100000000);
}


@end
