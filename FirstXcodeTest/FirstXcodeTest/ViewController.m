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
- (void)testButtonEvent {
    UIButton* btn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn1.frame = CGRectMake(100, 100, 100, 40);
    [btn1 setTitle:@"按钮1" forState:UIControlStateNormal];
    btn1.tag = 101;
    [btn1 addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [btn1 addTarget:self action:@selector(buttondown) forControlEvents:UIControlEventTouchDown];
    [btn1 addTarget:self action:@selector(buttonOut) forControlEvents:UIControlEventTouchUpOutside];
    [self.view addSubview:btn1];
    
    UIButton* btn2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn2.frame = CGRectMake(100, 200, 100, 40);
    [btn2 setTitle:@"按钮2" forState:UIControlStateNormal];
    btn2.tag = 102;
    [btn2 addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];
}

- (void)buttonPressed:(UIButton* ) btn{
    switch (btn.tag) {
        case 101:
            NSLog(@"101 pressed");
            break;
            
        default:
            NSLog(@"%d button pressed", (int)btn.tag);
            break;
    }
}

- (void)buttondown{
    NSLog(@"button down");
}

- (void)buttonOut{
    NSLog(@"button out");
}

- (void)testUIView{
    UIView* view1 = [[UIView alloc] init];
    view1.frame = CGRectMake(100, 100, 100, 100);
    view1.backgroundColor = [UIColor grayColor];
    view1.hidden = NO;
    view1.alpha = 0.9;
    
    UIView* view2 = [[UIView alloc] init];
    view2.frame = CGRectMake(125, 125, 100, 100);
    view2.backgroundColor = [UIColor greenColor];
    
    UIView* view3 = [[UIView alloc] init];
    view3.frame = CGRectMake(150, 150, 100, 100);
    view3.backgroundColor = [UIColor orangeColor];
    
    [self.view addSubview:view1];
    [self.view addSubview:view2];
    [self.view addSubview:view3];
    //[self.view bringSubviewToFront:view1];
    //[self.view sendSubviewToBack:view3];
    
    UIView* viewFront = [self.view subviews][3];
    UIView* viewBack = self.view.subviews[3];
    //[viewFront removeFromSuperview ];
    for (UIView* v in [self.view subviews]){
        NSLog(@"set back");
        v.backgroundColor = [UIColor redColor];
    }
    viewFront.backgroundColor = [UIColor blackColor];
    //viewBack.backgroundColor = [UIColor yellowColor];
    
    if (view1 == viewFront) {
        NSLog(@"view1 is 最前面的");
    }else {
        NSLog(@"view1 is not 最前面的");
    }
    
    if (view2 == viewBack) {
        NSLog(@"view2 is 最后的");
    }else {
        NSLog(@"view2 is not 最后面的");
    }
    //[view removeFromSuperview];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"这是我的第一个Xcode项目");

    //[self createUI];
    //[self createRectButton] ;
    //[self createImageButton] ;
    //[self testButtonEvent];
    [self testUIView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
