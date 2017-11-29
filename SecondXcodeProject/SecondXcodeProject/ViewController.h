//
//  ViewController.h
//  SecondXcodeProject
//
//  Created by 李文鹏 on 17/11/26.
//  Copyright © 2017年 李文鹏. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    UISwitch* _mySwitch;
    UIProgressView * _progressView;
    UISlider* _slider;
}

@property (retain, nonatomic) UISwitch* mySwitch;
@property (retain, nonatomic) UIProgressView* mProgressView;
@property (retain, nonatomic) UISlider* mSlider;

@end

