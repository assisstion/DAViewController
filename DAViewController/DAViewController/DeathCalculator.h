//
//  DeathCalculator.h
//  DAViewController
//
//  Created by Markus Feng on 10/15/15.
//  Copyright © 2015 Markus Feng and Liam Gong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserData.h"
#import "LifetimeData.h"
@interface DeathCalculator : NSObject

+(LifetimeData*) getLifetimeForUserData: UserData;

@end
