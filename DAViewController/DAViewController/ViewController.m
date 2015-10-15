//
//  ViewController.m
//  DAViewController
//
//  Created by Markus Feng on 10/12/15.
//  Copyright © 2015 Markus Feng and Liam Gong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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
        UIImage * image = [UIImage imageNamed:@"Hypno.png"];
        self.tabBarItem.image = image;
    }
    return self;
    
}

@end
