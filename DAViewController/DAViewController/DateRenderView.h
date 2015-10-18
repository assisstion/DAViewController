//
//  DateRenderView.h
//  DAViewController
//
//  Created by Markus Feng on 10/16/15.
//  Copyright © 2015 Markus Feng and Liam Gong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DateViewController.h"

@interface DateRenderView : UIView

@property DateViewController * controller;

-(id)initWithFrame:(CGRect)frame andColor:(UIColor *)color;

@end
