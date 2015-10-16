//
//  DateRenderView.m
//  DAViewController
//
//  Created by Markus Feng on 10/16/15.
//  Copyright © 2015 Markus Feng and Liam Gong. All rights reserved.
//

#import "DateRenderView.h"

@implementation DateRenderView

-(id)initWithFrame:(CGRect)frame andColor:(UIColor *)color{
    self = [super initWithFrame:frame];
    if(self){
        self.backgroundColor = color;
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
}


@end
