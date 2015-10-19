//
//  DateRenderView.h
//  DAViewController
//
//  Created by Markus Feng on 10/16/15.
//  Copyright © 2015 Markus Feng and Liam Gong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LifetimeData.h"

@interface DateRenderView : UIView

@property LifetimeData * data;

-(id)initWithFrame:(CGRect)frame andColor:(UIColor *)color;

@end
