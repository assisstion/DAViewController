//
//  ViewController.h
//  DAViewController
//
//  Created by Markus Feng on 10/12/15.
//  Copyright © 2015 Markus Feng and Liam Gong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DeathCalculator.h"
#import "LifetimeData.h"
#import "DateRenderView.h"

@interface DateViewController : UIViewController

@property DeathCalculator * calculator;
@property DateRenderView * renderer;

@end

