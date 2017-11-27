//
//  ViewController.m
//  步进器和分栏控制器13
//
//  Created by 李文鹏 on 17/11/27.
//  Copyright © 2017年 李文鹏. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize stepper = _stepper;
@synthesize segControl = _segControl;

- (void)testStepperAndSegControl {
    _stepper = [[UIStepper alloc] initWithFrame:CGRectMake(50, 100, 200, 200)];
    _stepper.maximumValue = 100;
    _stepper.minimumValue = -100;
    _stepper.stepValue = 10;
    _stepper.value = -80;
    _stepper.autorepeat = YES;
    _stepper.continuous = YES;
    _stepper.tintColor = [UIColor redColor];
    [_stepper addTarget:self action:@selector(stepChange) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_stepper];
    
    _segControl = [[UISegmentedControl alloc] initWithFrame:CGRectMake(10, 300, 300, 100)];
    [_segControl insertSegmentWithTitle:@"0元" atIndex:0 animated:YES];
    [_segControl insertSegmentWithTitle:@"10元" atIndex:1 animated:NO];
    [_segControl insertSegmentWithTitle:@"20元" atIndex:2 animated:YES];
    _segControl.selectedSegmentIndex = 0;
    [_segControl addTarget:self action:@selector(segChange) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_segControl];
}

- (void)segChange {
    NSLog(@"Your selected is %ld", _segControl.selectedSegmentIndex);
}

- (void)stepChange {
    NSLog(@"step value: %f", _stepper.value);
    _segControl.selectedSegmentIndex =  abs((int)(_stepper.value) % 3);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self testStepperAndSegControl];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
