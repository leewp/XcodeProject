//
//  ViewController.h
//  UIAlertAndAct
//
//  Created by 李文鹏 on 17/11/27.
//  Copyright © 2017年 李文鹏. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIAlertViewDelegate, UITextFieldDelegate> {
    UIAlertView* _alertView;
    UIActivityIndicatorView* _indicatorView;
    UITextField* _textFieldUsername;
    UITextField* _textFieldPassword;
}

@property (retain,nonatomic) UIAlertView* alertView;
@property (retain,nonatomic) UIActivityIndicatorView* indicatorView;
@property (retain,nonatomic) UITextField* textFieldUsername;
@property (retain,nonatomic) UITextField* textFieldPassword;
@end

