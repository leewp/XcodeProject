//
//  ViewController.m
//  FirstXcodeTest
//
//  Created by 李文鹏 on 17/11/24.
//  Copyright © 2017年 李文鹏. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)createUI{
    UILabel* lable = [[UILabel alloc]init];
    lable.text = @"你好 my name is walter what's your name";
    lable.font = [UIFont systemFontOfSize:24];
    lable.textColor = [UIColor greenColor];
    lable.backgroundColor = [UIColor grayColor];
    lable.frame = CGRectMake(50, 100, 160, 120);
    //self.view.backgroundColor = [UIColor grayColor];
    lable.shadowColor = [UIColor grayColor] ;
    lable.shadowOffset = CGSizeMake(2, 2) ;
    lable.textAlignment = NSTextAlignmentCenter ;
    lable.numberOfLines = 0 ;
    [self.view addSubview:lable];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"这是我的第一个Xcode项目");
    
    //self.view.backgroundColor = [UIColor blueColor];
    [self createUI];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
