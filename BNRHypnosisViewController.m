//
//  BNRHypnosisViewController.m
//  HypnoNerd
//
//  Created by Guwanjith Tennekoon on 9/6/14.
//  Copyright (c) 2014 GT. All rights reserved.
//

#import "BNRHypnosisViewController.h"
#import "BNRHypnosisView.h"

@interface BNRHypnosisViewController () <UITextFieldDelegate>
@end


@implementation BNRHypnosisViewController

-(void)loadView
{
    //Create a view
    CGRect frame = [UIScreen mainScreen].bounds;
    BNRHypnosisView *backgroundView = [[BNRHypnosisView alloc] initWithFrame:frame];
    
    CGRect textFielRect = CGRectMake(40, 70, 240, 30);
    UITextField *textField = [[UITextField alloc] initWithFrame:textFielRect];
    
    //Setting the border style on the field will allow us to see it more easily
    textField.borderStyle = UITextBorderStyleRoundedRect;
   
    
    //Adding placeholder text and adjusting keyboard's return key to say done instead.
    textField.placeholder = @"Hypnotize me";
    textField.returnKeyType = UIReturnKeyDone;
    
    //There will be a warning on this line.
    textField.delegate = self;
    
    [backgroundView addSubview:textField];
    
    //Set it as *the* view of this controller
    self.view = backgroundView;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    NSLog(@"%@", textField.text);
    return YES;
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

//Called right after a view controller is created.
-(void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"BNRHypnosisViewController loaded its view");
}

@end
