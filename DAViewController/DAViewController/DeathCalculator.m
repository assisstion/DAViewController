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
    
    //Values to find the expected lifespan
    float powerConst = 3.5;
    float minimumExpectancy = 70;
    
    NSDate * today = [[NSDate alloc] init];
    NSDate * birthDate = [uData dateOfBirth];
    
    //604800 seconds per week
    int weeksAlive = ([today timeIntervalSince1970] - [birthDate timeIntervalSince1970])/604800;
    
    int expectedWeeks = pow(pow(weeksAlive/52, powerConst) + pow(minimumExpectancy, powerConst), 1/powerConst) * 52;
    
    NSLog(@"%i", expectedWeeks);
    for(int i = 0; i < expectedWeeks; i++){
            if(i <= weeksAlive) {
                [testingArray addObject:@1];
            }
            else{
                [testingArray addObject:[[NSNumber alloc] initWithFloat:1 - (i - weeksAlive) / (float)(expectedWeeks - weeksAlive)]];
        }
    }
     
    result.likelihoods = testingArray;
    result.thisWeek = weeksAlive;
    return result;
}

@end
