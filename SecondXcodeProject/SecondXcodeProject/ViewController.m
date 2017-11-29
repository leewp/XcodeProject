//
//  ViewController.m
//  SecondXcodeProject
//
//  Created by 李文鹏 on 17/11/26.
//  Copyright © 2017年 李文鹏. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize mySwitch = _mySwitch;
@synthesize mProgressView = _progressView;
@synthesize mSlider = _slider;

- (void)testLabel{
    UILabel* label = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 200, 100)];
    label.text = @"文字回顾";
    label.backgroundColor = [UIColor blueColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.numberOfLines = 0;
    label.font = [UIFont systemFontOfSize:24];
    
    [self.view addSubview:label];
    self.view.backgroundColor = [UIColor greenColor];
}

- (void)testSwitch {
    _mySwitch = [[UISwitch alloc] initWithFrame:CGRectMake(100, 100, 40, 0)];
    [_mySwitch setOn:YES];
    [_mySwitch setOnTintColor:[UIColor redColor]];
    [_mySwitch setThumbTintColor:[UIColor blueColor]];
    [_mySwitch setTintColor:[UIColor purpleColor]];
    [_mySwitch addTarget:self action:@selector(swChange:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_mySwitch];
}

- (void)swChange: (UISwitch*) sw{
    if(sw.on == YES){
        NSLog(@"开关被打开");
    }else {
        NSLog(@"开关被关闭");
    }
}

- (void)testProgressAndSlider {
    _progressView = [[UIProgressView alloc] initWithFrame:CGRectMake(10, 100, 200, 0)];
    _progressView.progress = 0.3;
    _progressView.progressViewStyle = UIProgressViewStyleDefault;
    //[_progressView setTintColor:[UIColor brownColor]];
    //[_progressView setTrackTintColor:[UIColor blackColor]];
    //[_progressView setProgressTintColor:[UIColor redColor]];
    [self.view addSubview: _progressView];
    
    _slider = [[UISlider alloc] initWithFrame:CGRectMake(10, 200, 200, 40)];
    _slider.minimumValue = 0;
    _slider.maximumValue = 100;
    _slider.value = 40;
    //[_slider setTintColor:[UIColor brownColor]];
    //[_slider setMaximumTrackTintColor:[UIColor purpleColor]];
    //[_slider setMinimumTrackTintColor:[UIColor redColor]];
    //[_slider setThumbTintColor:[UIColor greenColor]];
    [_slider addTarget:self action:@selector(pressSlider) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_slider];
}

- (void)pressSlider {
    _progressView.progress = _slider.value / (_slider.maximumValue - _slider.minimumValue);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"vc1 viewDidLoad 第一次调用");
    //[self testSwitch];
    [self testProgressAndSlider];
}

- (void)viewWillAppear:(BOOL)animated {
    NSLog(@"vc1 视图即将显示");
}

- (void)viewDidAppear:(BOOL)animated {
    NSLog(@"vc1 视图已经显示");
}

- (void)viewWillDisappear:(BOOL)animated {
    NSLog(@"vc1 视图即将消失");
}

- (void)viewDidDisappear:(BOOL)animated {
    NSLog(@"vc1 视图已经消失");
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    //ViewController2* vc2 = [[ViewController2 alloc] init];
    //[self presentViewController:vc2 animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    NSLog(@"内存过低");
}

@end
