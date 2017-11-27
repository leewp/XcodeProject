//
//  ViewController.h
//  步进器和分栏控制器13
//
//  Created by 李文鹏 on 17/11/27.
//  Copyright © 2017年 李文鹏. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    UIStepper* _stepper;
    UISegmentedControl* _segControl;
}

@property (retain,nonatomic) UIStepper*             stepper;
@property (retain,nonatomic) UISegmentedControl* segControl;


@end

