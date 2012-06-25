//
//  RevViewController.m
//  Cal
//
//  Created by HARIHARAN THIAGARAJAN on 25/06/12.
//  Copyright (c) 2012 hariharanweb@gmail.com. All rights reserved.
//

#import "RevViewController.h"

@implementation RevViewController
{
    int value1;
    bool shouldClear;
}

@synthesize op;
@synthesize op1;



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setOp:nil];
    [self setOp1:nil];
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
    return YES;
}
 

- (IBAction)a:(id)sender {
    UIButton* myButton = (UIButton*) sender;
    if (shouldClear) {
        op.text = @"";
        shouldClear = false;
    }
    
    op.text = [op.text stringByAppendingString:myButton.titleLabel.text];
    
}

- (IBAction)clr:(id)sender {
    op.text = @"0";
}

- (IBAction)dmas:(id)sender {
    UIButton* dmas = (UIButton*) sender;
    op1.text = dmas.titleLabel.text;
    value1 = [op.text intValue];
    shouldClear = TRUE; 
    
}

- (IBAction)calc:(id)sender {
    if ([op1.text isEqualToString:@"+"]) {
        op.text = [NSString stringWithFormat:@"%d",value1 + op.text.intValue];
    }
    if ([op1.text isEqualToString:@"-"]) {
        op.text = [NSString stringWithFormat:@"%d",value1 - op.text.intValue];
    }
    if ([op1.text isEqualToString:@"*"]) {
        op.text = [NSString stringWithFormat:@"%d",value1 * op.text.intValue];
    }
    if ([op1.text isEqualToString:@"/"]) {
        op.text = [NSString stringWithFormat:@"%d",value1 / op.text.intValue];
    }
   
    shouldClear = TRUE;
    
}

@end
