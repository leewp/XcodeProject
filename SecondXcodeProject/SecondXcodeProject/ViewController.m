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

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UILabel* label = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 200, 100)];
    label.text = @"文字回顾";
    label.backgroundColor = [UIColor blueColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.numberOfLines = 0;
    label.font = [UIFont systemFontOfSize:24];
    
    [self.view addSubview:label];
    self.view.backgroundColor = [UIColor greenColor];
    
    NSLog(@"vc1 viewDidLoad 第一次调用");
    
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
    ViewController2* vc2 = [[ViewController2 alloc] init];
    [self presentViewController:vc2 animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    NSLog(@"内存过低");
}

@end
