//
//  PickerViewController.h
//  DAViewController
//
//  Created by Markus Feng on 10/13/15.
//  Copyright © 2015 Markus Feng and Liam Gong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DeathCalculator.h"

@interface PickerViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property DeathCalculator * calculator;

@end
