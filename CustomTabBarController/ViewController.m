//
//  ViewController.m
//  CustomTabBarController
//
//  Created by xiao haibo on 12-3-31.
//  Copyright (c) 2012年 xiao. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    SlidingTabsControl* tabs = [[SlidingTabsControl alloc] initWithTabCount:3 delegate:self];
    [self.view addSubview:tabs];
}

- (void)viewDidUnload
{
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



@end
