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
    
    //DOB Test: Sept. 24, 1999
    NSDateComponents * components = [[NSDateComponents alloc] init];
    [components setMonth:9];
    [components setDay:24];
    [components setYear:1999];
    NSDate * testDate = [[NSCalendar currentCalendar] dateFromComponents:components];
    NSDate * today = [[NSDate alloc] init];
    
    //604800 seconds per week
    int diff = ([today timeIntervalSince1970] - [testDate timeIntervalSince1970])/604800;

    //TODO implement data processing
    NSArray * data = @[];
    
    [self drawWithWeeksOld:diff andData:data];
    
}

-(void)drawWithWeeksOld:(int)weeksAlive andData:(NSArray*) data{
    
    UIBezierPath * path = [[UIBezierPath alloc] init];
    
    int length = weeksAlive;
    int weeks = 52;
    float horizSeparation = self.bounds.size.width / (weeks + 1); //52 weeks per year
    for(int i = 0; i < length; i++){
        float x = horizSeparation * ((i % weeks) + 1);
        float y = horizSeparation * ((i / weeks) + 1);
        [path moveToPoint: CGPointMake(x, y)];
        [path addLineToPoint: CGPointMake(x+1, y)];
        
    }
    [path stroke];
}


@end
