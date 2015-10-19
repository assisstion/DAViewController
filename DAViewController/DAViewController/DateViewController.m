//
//  ViewController.m
//  DAViewController
//
//  Created by Markus Feng on 10/12/15.
//  Copyright © 2015 Markus Feng and Liam Gong. All rights reserved.
//

#import "DateViewController.h"
#import "DateRenderView.h"

@interface DateViewController ()

@end

@implementation DateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CGRect bounds = self.view.bounds;
    CGRect rendererBounds = CGRectMake(bounds.origin.x + bounds.size.width / 8,
                                       bounds.origin.y + bounds.size.height / 8,
                                       bounds.size.width * 3 / 4,
                                       bounds.size.height * 3 / 4);
    self.renderer = [[DateRenderView alloc] initWithFrame:rendererBounds andColor:[UIColor colorWithRed:0 green:0.75 blue:1 alpha:1]];
    [self.view addSubview:self.renderer];
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
