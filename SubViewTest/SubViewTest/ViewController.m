//
//  ViewController.m
//  SubViewTest
//
//  Created by 李文鹏 on 17/12/4.
//  Copyright © 2017年 李文鹏. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    UIButton* _btnEnlarge;
    UIButton* _btnReduce;
}

@end

@implementation ViewController

@synthesize superView = _superView;
@synthesize subView1 = _subView1;
@synthesize subView2 = _subView2;
@synthesize subView3 = _subView3;
@synthesize subView4 = _subView4;
@synthesize subView5 = _subView5;

- (void)testSubView {
    _superView = [[UIView alloc] init];
    _superView.frame = CGRectMake(0, 0, 160, 280);
    _superView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:_superView];
    
    _subView1 = [[UIView alloc] init];
    _subView1.frame = CGRectMake(0, 0, 40, 40);
    _subView1.backgroundColor = [UIColor orangeColor];
    
    [_superView addSubview:_subView1];
    
    _subView2 = [[UIView alloc] init];
    _subView2.frame = CGRectMake(120, 0, 40, 40);
    _subView2.backgroundColor = [UIColor orangeColor];
    _subView2.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin;
    [_superView addSubview:_subView2];
    
    _subView3 = [[UIView alloc] init];
    _subView3.frame = CGRectMake(0, 120, 160, 40);
    _subView3.backgroundColor = [UIColor orangeColor];
    _subView3.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin ;
    [_superView addSubview:_subView3];
    
    _subView4 = [[UIView alloc] init];
    _subView4.frame = CGRectMake(0, 240, 40, 40);
    _subView4.backgroundColor = [UIColor orangeColor];
    _subView4.autoresizingMask = UIViewAutoresizingFlexibleTopMargin;
    [_superView addSubview:_subView4];
    
    _subView5 = [[UIView alloc] init];
    _subView5.frame = CGRectMake(120, 240, 40, 40);
    _subView5.backgroundColor = [UIColor orangeColor];
    _subView5.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleLeftMargin;
    [_superView addSubview:_subView5];
    
    _btnEnlarge = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btnEnlarge.frame = CGRectMake(200, 450, 40, 20);
    _btnEnlarge.tag = 106;
    [_btnEnlarge setTitle:@"放大" forState:UIControlStateNormal];
    [_btnEnlarge addTarget:self action:@selector(pressBtn: ) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_btnEnlarge];
    
    _btnReduce = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btnReduce.frame = CGRectMake(200, 500, 40, 20);
    _btnReduce.tag = 107;
    [_btnReduce setTitle:@"缩小" forState:UIControlStateNormal];
    [_btnReduce addTarget:self action:@selector(pressBtn: ) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_btnReduce];
    
}

- (void)pressBtn: (UIButton*) btn {
    switch (btn.tag) {
        case 106:
            [UIView beginAnimations:nil context:nil];
            [UIView setAnimationDuration:1];
            _superView.frame = CGRectMake(0, 0, 240, 420);
            [UIView commitAnimations];
            break;
        case 107:
            [UIView beginAnimations:nil context:nil];
            [UIView setAnimationDuration:1];
            _superView.frame = CGRectMake(0, 0, 160, 280);
            [UIView commitAnimations];
            break;
            
        default:
            break;
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self testSubView];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
