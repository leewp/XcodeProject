//
//  ViewController.m
//  UIAlertAndAct
//
//  Created by 李文鹏 on 17/11/27.
//  Copyright © 2017年 李文鹏. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize alertView;
@synthesize indicatorView;

- (void)testAlertView {
    _alertView = [[UIAlertView alloc] initWithTitle:@"警告" message:@"您的手机电量过低，即将自动关机，请自行保存好相关数据" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"OK",@"我知道了",@"朕知道了", nil];
    _alertView.alertViewStyle = UIAlertViewStyleLoginAndPasswordInput;
    [_alertView show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSLog(@"You clicked %ld", buttonIndex);
}

- (void)alertView:(UIAlertView *)alertView willDismissWithButtonIndex:(NSInteger)buttonIndex{
    NSLog(@"Alert will dismiss!");
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
    NSLog(@"Alert dismiss!");
}

- (void)testIndicatorView {
    _indicatorView = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(100, 400, 200, 200)];
    _indicatorView.activityIndicatorViewStyle = UIActivityIndicatorViewStyleWhiteLarge;
    self.view.backgroundColor = [UIColor blackColor];
    //[_indicatorView setHidesWhenStopped:NO];
    [self.view addSubview:_indicatorView];
    [_indicatorView startAnimating];
    [NSTimer scheduledTimerWithTimeInterval:5 target:self selector:@selector(stopIndicator:) userInfo:nil repeats:NO];
}

- (void)stopIndicator: (NSTimer*) timer{
    [timer invalidate];
    [_indicatorView stopAnimating];
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)addTwoTestBtn {
    NSArray* arr = [NSArray arrayWithObjects:@"启动警告按钮",@"启动等待提示按钮", nil] ;
    for (int i = 0; i < arr.count; i++){
        UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        btn.frame = CGRectMake(100, 100+100*i, 100, 40);
        btn.tag = 101+i;
        [btn setTitle:[arr objectAtIndex:i]  forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(btnPress:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btn];
    }
}

- (void)btnPress: (UIButton*) btn {
    switch (btn.tag) {
        case 101:
            [self testAlertView];
            break;
        case 102:
            [self testIndicatorView];
            break;
        default:
            break;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self addTwoTestBtn];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
