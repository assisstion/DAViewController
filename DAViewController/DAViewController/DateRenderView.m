//
//  DateRenderView.m
//  DAViewController
//
//  Created by Markus Feng on 10/16/15.
//  Copyright © 2015 Markus Feng and Liam Gong. All rights reserved.
//

#import "DateRenderView.h"
#import "DeathCalculator.h"

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
    
    /*
    //DOB Test: Sept. 24, 1999
    NSDateComponents * components = [[NSDateComponents alloc] init];
    [components setMonth:9];
    [components setDay:24];
    [components setYear:1999];
    NSDate * testDate = [[NSCalendar currentCalendar] dateFromComponents:components];
    NSDate * today = [[NSDate alloc] init];
     
    
    //604800 seconds per week
    int weeksAlive = ([today timeIntervalSince1970] - [testDate timeIntervalSince1970])/604800;

    //TODO implement data processing
    NSArray * data = @[];
     
     */
    
    //Sample data testing
    
    int weeksAlive = self.controller.data.thisWeek;
    NSArray * data = self.controller.data.likelihoods;
    
    [self drawWithWeeksOld:weeksAlive andData:data];
    
}

-(void)drawWithWeeksOld:(int)weeksAlive andData:(NSArray*) data{
    
    UIBezierPath * path = [[UIBezierPath alloc] init];
    
    int length = (int)data.count;
    int weeks = 52;
    float horizSeparation = self.bounds.size.width / (weeks + 1); //52 weeks per year
    
    float lastProbability = 1;
    
    for(int i = 0; i < length; i++){
        
        
        float probability = [[data objectAtIndex:i] floatValue];
        
        if(i == weeksAlive || probability != lastProbability){
           
           [path stroke];
            path = [[UIBezierPath alloc] init];
            
            UIColor * color;
            if(i == weeksAlive){
                color = [[UIColor alloc] initWithRed:1 green:0 blue:0 alpha:probability];
                [path setLineWidth:4];
                lastProbability = -1;
            }
            else{
                color = [[UIColor alloc] initWithRed:0 green:0 blue:0 alpha:probability];
                [path setLineWidth:1];
            }
            
            [color setStroke];
        }
        
        
        
        float x = horizSeparation * ((i % weeks) + 1);
        float y = horizSeparation * ((i / weeks) + 1);
        if(i == weeksAlive){
            [path moveToPoint: CGPointMake(x-2, y)];
            [path addLineToPoint: CGPointMake(x+2, y)];
        }
        else{
            [path moveToPoint: CGPointMake(x, y)];
            [path addLineToPoint: CGPointMake(x+1, y)];
        }
        
    }
    NSLog(@"made path");
}


@end
