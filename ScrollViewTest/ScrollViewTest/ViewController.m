//
//  ViewController.m
//  ScrollViewTest
//
//  Created by 刘丹 on 2017/11/29.
//  Copyright © 2017年 刘丹. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize scrollView = _scrollView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 320, 576)];
    _scrollView.contentSize = CGSizeMake(320 * 5, 576);
    _scrollView.pagingEnabled = YES;
//    _scrollView.indicatorStyle = UIScrollViewIndicatorStyleWhite;
    _scrollView.scrollEnabled = YES;
    _scrollView.bounces = YES;
    _scrollView.alwaysBounceVertical = YES;
    _scrollView.alwaysBounceHorizontal = YES;
    _scrollView.showsHorizontalScrollIndicator = YES;
    _scrollView.showsVerticalScrollIndicator = YES;
    _scrollView.backgroundColor = [UIColor orangeColor];
    for (int i = 0; i<5; i++){
        //UIImage* im = [[UIImage alloc] initWithContentsOfFile:[NSString stringWithFormat:@"%d.jpg", i+1]];
        NSString* strName = [NSString stringWithFormat:@"%d.jpg", i+1];
        UIImage* im =[UIImage imageNamed:strName];
        UIImageView* iv = [[UIImageView alloc] init];
        iv.image = im;
        iv.frame = CGRectMake(320*i, 0, 320, 576);
        [_scrollView addSubview:iv];
    }
    [self.view addSubview:_scrollView];
    NSLog(@"run finished ");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
