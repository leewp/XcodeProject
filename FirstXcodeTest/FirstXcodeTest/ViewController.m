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
    lable.font = [UIFont systemFontOfSize:18];
    lable.textColor = [UIColor greenColor];
    lable.backgroundColor = [UIColor grayColor];
    lable.frame = CGRectMake(50, 100, 160, 100);
    //self.view.backgroundColor = [UIColor grayColor];
    lable.shadowColor = [UIColor grayColor] ;
    lable.shadowOffset = CGSizeMake(2, 2) ;
    lable.textAlignment = NSTextAlignmentCenter ;
    lable.numberOfLines = 0 ;
    [self.view addSubview:lable];
}

-(void)createRectButton{
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect] ;
    btn.frame = CGRectMake(100, 200, 100, 50);
    btn.backgroundColor = [UIColor grayColor] ;
    [btn setTitle:@"正常状态" forState:UIControlStateNormal] ;
    [btn setTitle:@"按下状态" forState:UIControlStateHighlighted];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal] ;
    [btn setTitleColor:[UIColor orangeColor] forState:UIControlStateHighlighted] ;
    [btn setTintColor:[UIColor whiteColor]] ;
    btn.titleLabel.font = [UIFont systemFontOfSize:18];
    [self.view addSubview:btn] ;
}

-(void)createImageButton{
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeCustom] ;
    btn.frame = CGRectMake(100, 300, 100, 100) ;
    UIImage* icon01 = [UIImage imageNamed:@"btn1.jpg"] ;
    UIImage* icon02 = [UIImage imageNamed:@"btn2.jpg"] ;
    [btn setImage:icon01 forState:UIControlStateNormal ];
    [btn setImage:icon02 forState:UIControlStateHighlighted] ;
    [self.view addSubview:btn] ;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"这是我的第一个Xcode项目");
    
    //self.view.backgroundColor = [UIColor blueColor];
    [self createUI];
    [self createRectButton] ;
    [self createImageButton] ;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
