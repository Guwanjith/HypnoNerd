//
//  BNRReminderViewController.m
//  HypnoNerd
//
//  Created by Guwanjith Tennekoon on 9/6/14.
//  Copyright (c) 2014 GT. All rights reserved.
//

#import "BNRReminderViewController.h"

@interface BNRReminderViewController ()

@property (nonatomic, weak) IBOutlet UIDatePicker *datePicker;

@end

@implementation BNRReminderViewController

-(IBAction)addReminder:(id)sender
{
    // this does not work correctly, it defaults to GMT and I am in GMT+1
    NSDate *date = self.datePicker.date;
    NSLog(@"Setting a reminder for: %@", date);
    
    UILocalNotification *note = [[UILocalNotification alloc] init];
    note.alertBody = @"Hypnotize me!";
    note.fireDate = date;
    
    [[UIApplication sharedApplication] scheduleLocalNotification:note];
}

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil
                           bundle:nibBundleOrNil];
    if (self) {
        //Set the tab bar item's title
        self.tabBarItem.title = @"Reminder";
        
        //Create a UIImage from a file
        //This will use Time@2x.png on retina display devices
        UIImage *image = [UIImage imageNamed:@"Time.png"];
        
        //Put that image on the tab bar item
        self.tabBarItem.image = image;
    }
    return self;
}

//Called after a view controller is created.
-(void)viewDidLoad
{
    //Always call the supre implementation of viewDidLoad
    [super viewDidLoad];
    NSLog(@"BNRReminderViewController loaded its view.");
}

//The following occurs EVERY time the view appears, not just after the view controller is created.
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.datePicker.minimumDate = [NSDate dateWithTimeIntervalSinceNow:60];
}

@end
