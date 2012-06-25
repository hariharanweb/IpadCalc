//
//  RevViewController.h
//  Cal
//
//  Created by HARIHARAN THIAGARAJAN on 25/06/12.
//  Copyright (c) 2012 hariharanweb@gmail.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RevViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *op;

@property (weak, nonatomic) IBOutlet UITextField *op1;

- (IBAction)a:(id)sender;

- (IBAction)clr:(id)sender;

- (IBAction)dmas:(id)sender;
- (IBAction)calc:(id)sender;
@end
