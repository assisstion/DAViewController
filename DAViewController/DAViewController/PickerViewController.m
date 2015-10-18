//
//  PickerViewController.m
//  DAViewController
//
//  Created by Markus Feng on 10/13/15.
//  Copyright © 2015 Markus Feng and Liam Gong. All rights reserved.
//

#import "PickerViewController.h"

@interface PickerViewController ()

@property (weak, nonatomic) IBOutlet UIPickerView *genderPicker;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

@property NSArray * genderData;

@end

@implementation PickerViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    
    NSDateComponents * components = [[NSDateComponents alloc] init];
    [components setMonth:1];
    [components setDay:1];
    [components setYear:1900];
    NSDate * minDate = [[NSCalendar currentCalendar] dateFromComponents:components];
   
    self.datePicker.minimumDate = minDate;
    self.datePicker.maximumDate = [NSDate date];
    
    components = [[NSDateComponents alloc] init];
    [components setMonth:1];
    [components setDay:1];
    [components setYear:2000];
    
    NSDate * defaultDate = [[NSCalendar currentCalendar] dateFromComponents:components];
    
    [self.datePicker setDate:defaultDate];
}

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self){
        self.tabBarItem.title = @"Picker";
        UIImage * image = [UIImage imageNamed:@"BirthdayCake.png"];
        self.tabBarItem.image = image;
        self.calculator = [[DeathCalculator alloc] init];
        self.genderData = @[@"Prefer not to answer", @"Male", @"Female"];
    }
    return self;
    
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return self.genderData.count;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [self.genderData objectAtIndex:row];
}

-(void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    //TODO Put data into brain
    NSLog(@"Disappearing view");
}



@end
