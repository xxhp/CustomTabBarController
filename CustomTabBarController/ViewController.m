//
//  ViewController.m
//  CustomTabBarController
//
//  Created by xiao haibo on 12-3-31.
//  Copyright (c) 2012年 xiao. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>
@interface ViewController ()

@end

@implementation ViewController
@synthesize backView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
   
    SlidingTabsControl* tabs = [[SlidingTabsControl alloc] initWithTabCount:3 delegate:self];
   
    [self.view addSubview:tabs];
    [tabs release];
    
    [self.backView.layer setCornerRadius:10.0f];
    [self.backView.layer setMasksToBounds:YES];    

    self.backView.frame =CGRectMake(2, 10, 316, 450-44);
    
    self.backView.backgroundColor = [UIColor colorWithRed:84.0/255.0f green:18.0/255.0f blue:108.0/255.0f alpha:.8];
    self.view.backgroundColor = [UIColor blackColor];
}

- (void)viewDidUnload
{
    [self setBackView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}
#pragma mark -

#pragma mark SlidingTabsControl Delegate
- (UILabel*) labelFor:(SlidingTabsControl*)slidingTabsControl atIndex:(NSUInteger)tabIndex;
{
    UILabel* label = [[[UILabel alloc] init] autorelease];
    label.text = [NSString stringWithFormat:@"Tab %i", tabIndex+1];
    
    return label;
}

- (void) touchUpInsideTabIndex:(NSUInteger)tabIndex
{
    
}

- (void) touchDownAtTabIndex:(NSUInteger)tabIndex
{
    
}



- (void)dealloc {
    [backView release];
    [super dealloc];
}
@end
