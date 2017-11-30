//
//  ViewController.h
//  ScrollViewTest2
//
//  Created by 李文鹏 on 17/11/30.
//  Copyright © 2017年 李文鹏. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIScrollViewDelegate>{
    UIScrollView* _scrollView;
}

@property (retain, nonatomic) UIScrollView* scrollView;


@end

