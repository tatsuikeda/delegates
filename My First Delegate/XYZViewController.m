//
//  XYZViewController.m
//  My First Delegate
//
//  Created by Tatsu Ikeda on 1/17/14.
//  Copyright (c) 2014 Tatsu Ikeda. All rights reserved.
//

#import "XYZViewController.h"

@interface XYZViewController ()

@end

@implementation XYZViewController

- (void)actionDidTapClearButton:(id)sender
{
self.outletTextField.text = @"";
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return NO;
}

-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    // Label: "App"
    // TextField: "App"
    // string: "l"
    // Label : TextField + string
    
    NSString *updatedString = [textField.text stringByReplacingCharactersInRange:range withString:string];
    
    /*
    if ([string isEqualToString:@"a"])
    {
        return NO;
    }
    */
    
    /*
    if ([string caseInsensitiveCompare:@"a"] == NSOrderedSame)
    {
        return NO;
    }
    */
    
    if ([string compare:@"a" options:NSCaseInsensitiveSearch] == NSOrderedSame)
    {
        return NO;
    }
     
    //self.outletUILabel.text = textField.text;
    [self.outletUILabel setText:updatedString];
    return YES;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
