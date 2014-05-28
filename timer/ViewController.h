//
//  ViewController.h
//  timer
//
//  Created by Admin on 14.04.14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>







@interface ViewController : UIViewController
{
    int myTime;
    NSTimer *theTimer;

}

- (IBAction)buttomTime30;

- (IBAction)buttomTime60;


- (IBAction)buttomTime90;


- (IBAction)buttomTime120;


- (IBAction)buttomTime150;


- (IBAction)buttomTime180;


- (IBAction)buttomDecTime;

- (IBAction)buttomIncTime;

- (IBAction)buttomReset;
@property (strong, nonatomic) IBOutlet UIView *portaitView;
@property (strong, nonatomic) IBOutlet UIView *landscapeView;

@property (strong, nonatomic) IBOutlet UILabel *timerLabel;



@end
