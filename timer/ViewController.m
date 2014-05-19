//
//  ViewController.m
//  timer
//
//  Created by Admin on 14.04.14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize timerLabel;


- (void) countDown
{ if (myTime != 0)
    myTime--;
    timerLabel.text = [NSString stringWithFormat:@"%i:%i", myTime/60,myTime%60];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
   // timerLabel.text = [NSString stringWithFormat:@"%i:%i", myTime/60,myTime];
    /*_mybutton.layer.borderWidth = .5f;
    _mybutton.layer.borderColor = [[UIColor blackColor]CGColor];
    
    
    _mybutton.layer.masksToBounds = true;
    _mybutton.layer.cornerRadius = 40;
   */
    // Notice cap insets are different from above
    
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)buttomTime30
{   myTime = 31;
if (!theTimer)
theTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(countDown) userInfo:nil repeats:YES];
}
- (IBAction)buttomTime60
{  myTime = 61;
if (!theTimer)
theTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(countDown) userInfo:nil repeats:YES];}

- (IBAction)buttomTime90
{  myTime = 91;
if (!theTimer)
theTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(countDown) userInfo:nil repeats:YES];
    }

- (IBAction)buttomTime120
{  myTime = 121;
if (!theTimer)
theTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(countDown) userInfo:nil repeats:YES];}

- (IBAction)buttomTime150
{  myTime = 151;
if (!theTimer)
theTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(countDown) userInfo:nil repeats:YES];
}

- (IBAction)buttomTime180
{  myTime = 181;    if (!theTimer)
theTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(countDown) userInfo:nil repeats:YES];
}

- (IBAction)buttomDecTime
{ if (myTime>30)
    myTime = (myTime - 30);
//if (!theTimer)
// timerLabel.text = [NSString stringWithFormat:@"%i",myTime];
//theTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(countDown) userInfo:nil repeats:YES];
}

- (IBAction)buttomIncTime
{  myTime = (myTime + 30);
  //  if (!theTimer)
   //     timerLabel.text = [NSString stringWithFormat:@"%i",myTime];
   //     theTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(countDown) userInfo:nil repeats:YES];
}

- (IBAction)buttomReset
{   myTime = 0;
    
    timerLabel.text = [NSString stringWithFormat:@"%i:%i", myTime/60,myTime%60];
    [theTimer invalidate];
    theTimer = nil;
}

@end
