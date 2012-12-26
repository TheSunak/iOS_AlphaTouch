//
//  ViewController.h
//  AlphaTouch
//
//  Created by Vishal Sunak on 12/24/12.
//  Copyright (c) 2012 Vishal Sunak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

            //subclass          //superclass

    //Declare a method in the header for the buttonPressed that we added:
    - (void)buttonPressed: (UIButton *)sender;

    //The common practice is to have subViews listed in as properties in the header:
    @property (weak, nonatomic) UIButton *fiftyPercentButton;
    @property (weak, nonatomic) UIButton *hundredPercentButton;

@end
