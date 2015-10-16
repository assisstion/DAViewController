//
//  ViewController.m
//  DAViewController
//
//  Created by Markus Feng on 10/12/15.
//  Copyright © 2015 Markus Feng and Liam Gong. All rights reserved.
//

#import "DateViewController.h"

@interface DateViewController ()

@end

@implementation DateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self){
        self.tabBarItem.title = @"Calendar";
        UIImage * image = [UIImage imageNamed:@"Grave.png"];
        self.tabBarItem.image = image;
        self.calculator = [[DeathCalculator alloc] init];
    }
    return self;
    
}

@end
