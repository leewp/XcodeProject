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
    __weak IBOutlet UILabel *_lbUserName;
    __weak IBOutlet UILabel *_lbPassword;
    __weak IBOutlet UITextField *_tfUserName;
    __weak IBOutlet UITextField *_tfPassword;
    __weak IBOutlet UIButton *_btnLogin;
    __weak IBOutlet UIButton *_btnRegister;
}
@property (weak, nonatomic) IBOutlet UIButton *btnLogin;
@property (weak, nonatomic) IBOutlet UIButton *btnRegister;

@property (retain,nonatomic) UIAlertView* alertView;
@property (retain,nonatomic) UIActivityIndicatorView* indicatorView;
@property (retain,nonatomic) UITextField* textFieldUsername;
@property (retain,nonatomic) UITextField* textFieldPassword;
@end

