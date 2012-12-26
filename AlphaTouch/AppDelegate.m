//
//  AppDelegate.m
//  AlphaTouch
//
//  Created by Vishal Sunak on 12/24/12.
//  Copyright (c) 2012 Vishal Sunak. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.viewController = [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    
    NSLog(@"Hello World"); // this line outputs to the console on the launch of the app
    
    /*--------------------BASIC EXAMPLE BEORE REFACTOR-----------------------------------
    
    //--------Find the Dimensions of the screen--------
    // UIScreen *screen = [UIScreen mainScreen];
    //CGRect viewRect = [screen bounds];
    
   
    //All in one line:
    CGRect viewRect = [[UIScreen mainScreen] bounds];
    
    //The "Canvas"
    //1) Allocate memory for the window
    //2) Initialize object with frame size to the bounds of the main screen
    // we can use self because window already defined in the .h file as an instance variable
    
    self.window = [[UIWindow alloc] initWithFrame:viewRect];
    
    //The "Paintbrush"
    //Receive all the non-keyboard and touch events here:
    
    UIViewController *colorTouchVC = [[UIViewController alloc] init];
    self.window.rootViewController = colorTouchVC; //This ViewController gets control of the window
    
    //The "Paint"
    UIView *colorView = [[UIView alloc] initWithFrame:viewRect];    //creates a view the size of the whole screen
    
    //Set Color of the view:
    
    colorView.backgroundColor = [UIColor yellowColor];
    colorTouchVC.view = colorView;
    
    [self.window makeKeyAndVisible];    //Call the method to make the window visible
    
    NSLog(@"Screen is %f tall and %f wide", viewRect.size.height, viewRect.size.width);
    //-------------BASIC EXAMPLE BEFORE REFACTOR------------------------------------*/
    
    
    //--------------------REFACTORED-----------------------------------
     
    CGRect viewRect = [[UIScreen mainScreen] bounds];

     //The "Canvas"
     self.window = [[UIWindow alloc] initWithFrame:viewRect];
     
     //The "Paintbrush"
     //Receive all the non-keyboard and touch events here:
     
     self.viewController = [[ViewController alloc] init];
    
     self.window.rootViewController =  self.viewController; //This ViewController gets control of the window
     
     //The "Paint" ... Moved to the ViewController.m
    
     
     [self.window makeKeyAndVisible];    //Call the method to make the window visible
     
     NSLog(@"Screen is %f tall and %f wide", viewRect.size.height, viewRect.size.width);
     //-------------REFACTORED------------------------------------//
   
    

    
    return YES;
    
    
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
