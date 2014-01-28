//
//  XYZViewController.h
//  My First Delegate
//
//  Created by Tatsu Ikeda on 1/17/14.
//  Copyright (c) 2014 Tatsu Ikeda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XYZViewController : UIViewController<UITextFieldDelegate, UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *outletUILabel;

@end
