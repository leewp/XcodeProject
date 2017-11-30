//
//  ViewController.m
//  ScrollViewTest2
//
//  Created by 李文鹏 on 17/11/30.
//  Copyright © 2017年 李文鹏. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    int picNums = 9;
    self.scrollView = [[UIScrollView alloc] init];
    self.scrollView.frame = CGRectMake(10, 50, 320, 576);
    
    self.scrollView.bounces = YES;
    self.scrollView.contentSize = CGSizeMake(320, 576 * picNums);
    self.scrollView.scrollEnabled = YES;
    self.scrollView.alwaysBounceHorizontal = YES;
    self.scrollView.delegate = self;
    self.scrollView.pagingEnabled = YES;
    
    for (int i =0 ;i < picNums; i++){
        UIImage* im = [UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg", i+1]];
        UIImageView* iv = [[UIImageView alloc] initWithImage: im];
        iv.frame = CGRectMake(0, 576*i, 320, 576);
        [self.scrollView addSubview: iv];
    }
    [self.view addSubview: self.scrollView];
    float x = [UIScreen mainScreen].bounds.size.width;
    float y = [UIScreen mainScreen].bounds.size.height;
    NSLog(@"x= %f, y= %f",x,y);
    
}

- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    //[self.scrollView setContentOffset:CGPointMake(0, 1154) animated:YES];
    UITouch* touch = [touches anyObject];
    if(touch.tapCount == 1){
        NSLog(@"单击了");
    }else if(touch.tapCount == 2){
        NSLog(@"双击了");
        [self.scrollView setContentOffset:CGPointMake(0, 0) animated:YES];
    }
}

- (void) scrollViewDidScroll:(UIScrollView *)scrollView {
    NSLog(@"scrollViewDidScroll current y = %f", scrollView.contentOffset.y);
    
}

- (void) scrollViewDidScrollToTop:(UIScrollView *)scrollView {
    NSLog(@" !!!!!!TO TOP!!!!!!");
}

- (void) scrollViewWillBeginDecelerating:(UIScrollView *)scrollView {
    NSLog(@"scrollViewWillBeginDecelerating");
}

- (void) scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    NSLog(@"scrollViewDidEndDecelerating");
}

- (void) scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    NSLog(@"scrollViewWillBeginDragging");
}

- (void) scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate {
    NSLog(@"scrollViewDidEndDragging");
}

- (void) scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView {
    NSLog(@"scrollViewDidEndScrollingAnimation");
}

- (void) touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"touchesEnded");
}

- (void) touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch* touch = [touches anyObject];
    CGPoint point = [touch locationInView:self.view];
    NSLog(@"touchesMoved! x=%f, y= %f", point.x, point.y);
}

- (void) touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"touchesCancelled!");
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
