//
//  DeathCalculator.m
//  DAViewController
//
//  Created by Markus Feng on 10/15/15.
//  Copyright © 2015 Markus Feng and Liam Gong. All rights reserved.
//

#import "DeathCalculator.h"

@implementation DeathCalculator

+(LifetimeData*) getLifetimeForUserData: (UserData *) uData
{
    LifetimeData *result = [[LifetimeData alloc] init];
    
    NSMutableArray * testingArray = [[NSMutableArray alloc] init];
     
        int alive = 2000;
        int total = 3000;
        for(int i = 0; i < total; i++){
            if(i <= alive) {
                [testingArray addObject:@1];
            }
            else{
                [testingArray addObject:[[NSNumber alloc] initWithFloat:1 - (i - alive) / (float)(total - alive)]];
        }
    }
     
    result.likelihoods = testingArray;
    result.thisWeek = alive;
    return result;
}

@end
