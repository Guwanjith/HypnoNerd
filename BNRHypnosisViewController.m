//
//  BNRHypnosisViewController.m
//  HypnoNerd
//
//  Created by Guwanjith Tennekoon on 9/6/14.
//  Copyright (c) 2014 GT. All rights reserved.
//

#import "BNRHypnosisViewController.h"
#import "BNRHypnosisView.h"

@implementation BNRHypnosisViewController

-(void)loadView
{
    //Create a view
    CGRect frame = [UIScreen mainScreen].bounds;
    BNRHypnosisView *backgroundView = [[BNRHypnosisView alloc] initWithFrame:frame];
    
    //Set it as *the* view of this controller
    self.view = backgroundView;
}


-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil
                           bundle:nibBundleOrNil];
    if (self) {
        //Set the tab bar item's title
        self.tabBarItem.title = @"Hypnotize";
        
        //Create a UIImage from a file
        //This will use Hypno@2x.png on retina display devices
        UIImage *image = [UIImage imageNamed:@"Hypno.png"];
        
        //Put that image on the tab bar item
        self.tabBarItem.image = image;
    }
    return self;
}

-(void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"BNRReminderViewController loaded its view");
}

@end
