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
    
    
    //-----------------CREATING A BUTTON SUBVIEW-------------------------
    //create a button in standard format for iPhone
    /*UIButton *firstButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    //Detailed Disclosure type of button like iMaps has:
    //UIButton *firstButton = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    
    //Frame sets the x & y location, and the height/width in points
    // 0,0 is the top right corner
    //Non-retina iPhone is 1 point = 1 pixel
    //iPhone 4 and iPhone5, 1 point = 4 pixels
    
    firstButton.frame = CGRectMake(100, 100, 200, 44);
    
    //This is what the title of the button will read as the default:
    //Send a message to the button to default the text.
    [firstButton setTitle:@"Change background!" forState:UIControlStateNormal];
    
    //This text will change the value of the text when the button is clicked:
    // [firstButton setTitle:@"Ouch!" forState:UIControlStateHighlighted];
    
    //Add the button to our view:
    [self.view addSubview:firstButton];
    
     //-----------------MONITORING FOR A BUTTON RELEASE EVENT-------------------
     
     [firstButton addTarget:self
     action:@selector(buttonPressed:)
     forControlEvents:UIControlEventTouchUpInside];
     
     //On the event when the firstButton has a press release, it calls the function "buttonPressed:"
     //This is how its all wired up.
     
     //--------- END OF MONITORING FOR A BUTTON RELEASE EVENT-------------------
    
     
     */
    //-----------------END OF CREATING A BUTTON SUBVIEW-------------------------
    
    //-----------------CREATING A LABEL SUBVIEW-------------------------
    
    //Create a new label
    UILabel *firstLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 30, 200, 44)];
    
    //Change the label color to clear:
    firstLabel.backgroundColor = [UIColor clearColor];
    
    //Set the label:
    firstLabel.text = @"Hello, welcome to my app!";
    
    //Add the label to our view:
    [self.view addSubview:firstLabel];
     //----------------END OF CREATING A LABEL SUBVIEW-------------------------
    

     /*//-----------------TWO BUTTONS EXAMPLE:-------------------------
    
    //Create one button:
    UIButton *firstButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    firstButton.frame = CGRectMake(100, 100, 100, 44);
    [firstButton setTitle:@"Make 50%" forState:UIControlStateNormal];
   
    [self.view addSubview:firstButton];
   
    //This is wired up to the handler "buttonPressed"
    [firstButton addTarget:self
                    action:@selector(buttonPressed:)
          forControlEvents:UIControlEventTouchUpInside];
    
    //Create another button:
    UIButton *secondButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    secondButton.frame = CGRectMake(100, 300, 100, 44);
    
    [secondButton setTitle:@"Make 100%" forState:UIControlStateNormal];
    
    [self.view addSubview:secondButton];
    
    //This is wired up to the handler "buttonPressed"
    [secondButton addTarget:self
                     action:@selector(buttonPressed:)
           forControlEvents:UIControlEventTouchUpInside];
    
    //In order to use one function, the "buttonPressed" function needs to be able to know
    //Which button was clicked that had the event, so logic has to be added to the buttonPressed method
    
     //------------END OF TWO BUTTONS EXAMPLE-------------------------*/
    
    
    //-----------------TWO BUTTONS EXAMPLE REFACTORED-------------------------
    
    //Create one button:
    self.fiftyPercentButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    self.fiftyPercentButton.frame = CGRectMake(100, 100, 100, 44);
    [self.fiftyPercentButton setTitle:@"Make 50%" forState:UIControlStateNormal];
    
    [self.view addSubview:self.fiftyPercentButton];
    
    //This is wired up to the handler "buttonPressed"
    [self.fiftyPercentButton addTarget:self
                    action:@selector(buttonPressed:)
          forControlEvents:UIControlEventTouchUpInside];
    
    //Create another button:
    self.hundredPercentButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    self.hundredPercentButton.frame = CGRectMake(100, 300, 100, 44);
    
    [self.hundredPercentButton setTitle:@"Make 100%" forState:UIControlStateNormal];
    
    [self.view addSubview:self.hundredPercentButton];
    
    //This is wired up to the handler "buttonPressed"
    [self.hundredPercentButton addTarget:self
                     action:@selector(buttonPressed:)
           forControlEvents:UIControlEventTouchUpInside];
    
    //In order to use one function, the "buttonPressed" function needs to be able to know
    //Which button was clicked that had the event, so logic has to be added to the buttonPressed method
    
    //------------END OF TWO BUTTONS EXAMPLE REFACTORED-------------------------
    
    
    
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
    //Spit out a console message on down click:
    //NSLog(@"On Touch");
}

//This method below writes out a log message after the touch ends
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    //Spit out a console message after click release:
    //NSLog(@"After touch");
    
    //the following code to randomize the alpha transparency:
   // self.view.alpha = ((double)arc4random() / 0x100000000);
}

- (void)buttonPressed:(UIButton *)sender
{
    NSLog(@"Button pressed, sender: %@", sender);
    self.view.alpha = ((double)arc4random() / 0x100000000);
   
    //This message below removes the button from the view, detaches it:
    //[sender removeFromSuperview];
    
    //This line of code can change the background color on the button click:
    //self.view.backgroundColor = [UIColor blueColor];
    
    
    
    /*//-------------OLD IF STATEMENT BEFORE REFACTOR-------------
    //If statement breakdown:
    //Sender.titleLabel is the label of the button that sent the event to this point
    //Access the value of the label by doing the .text
    //Because the .text is a string, we have to do a string compare with "Make 50%" to check it
    if ([sender.titleLabel.text isEqualToString:@"Make 50%"]) {
        //Set the alpha to 0.5
        self.view.alpha = 0.5;
    }  else {
        //Set the alpha to 1
        self.view.alpha = 1;
    
    }
    //--------------------------------------------------------*/
    
    //----------NEW IF STATEMENT AFTER REFACTOR--------------
    
    if ([sender isEqual:self.fiftyPercentButton]){
        //Set the alpha to 0.5
        self.view.alpha = 0.5;
    }
    else{
        self.view.alpha = 1.0;
    }
        
    //-------------------------------------------------------
    
    
    
}


@end
