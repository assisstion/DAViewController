//
//  PickerViewController.m
//  DAViewController
//
//  Created by Markus Feng on 10/13/15.
//  Copyright © 2015 Markus Feng and Liam Gong. All rights reserved.
//

#import "PickerViewController.h"

@implementation PickerViewController

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self){
        self.tabBarItem.title = @"Picker";
        UIImage * image = [UIImage imageNamed:@"BirthdayCake.png"];
        self.tabBarItem.image = image;
    }
    return self;
    
}


@end
