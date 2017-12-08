//
//  ViewController.h
//  SubViewTest
//
//  Created by 李文鹏 on 17/12/4.
//  Copyright © 2017年 李文鹏. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    UIView* _superView;
    UIView* _subView1;
    UIView* _subView2;
    UIView* _subView3;
    UIView* _subView4;
    UIView* _subView5;
    
}

@property(nonatomic) UIView* superView;
@property(nonatomic) UIView* subView1;
@property(nonatomic) UIView* subView2;
@property(nonatomic) UIView* subView3;
@property(nonatomic) UIView* subView4;
@property(nonatomic) UIView* subView5;

@end

