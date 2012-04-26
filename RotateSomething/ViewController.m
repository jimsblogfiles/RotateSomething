//
//  ViewController.m
//  RotateSomething
//
//  Created by James Border on 4/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

#define degreesToRadians(x) (M_PI * x / 180.0)

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	[button addTarget:self action:@selector(targetMethod:) forControlEvents:UIControlEventTouchDown];
	[button setTitle:@"Tap" forState:UIControlStateNormal];
	button.frame = CGRectMake(0.0, 0.0, 160.0, 40.0);
	[self.view addSubview:button];
	
}

-(IBAction)targetMethod:(UIButton*)sender {
	
	[UIView animateWithDuration:0.25 delay:0.0 options:UIViewAnimationCurveEaseOut
					 animations:^{
						 sender.transform = CGAffineTransformRotate(sender.transform, degreesToRadians(90));
					 }	completion:nil
	 ];
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
