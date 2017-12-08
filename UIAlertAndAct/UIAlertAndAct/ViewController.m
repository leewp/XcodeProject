//
//  ViewController.m
//  UIAlertAndAct
//
//  Created by 李文鹏 on 17/11/27.
//  Copyright © 2017年 李文鹏. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize alertView = _alertView;
@synthesize indicatorView = _indicatorView;
@synthesize textFieldUsername = _textFieldUsername;
@synthesize textFieldPassword = _textFieldPassword;
- (IBAction)pressRegister:(id)sender {
    NSLog(@"register press");
}
- (IBAction)pressLogin:(id)sender {
    NSString* defUser=@"leewp";
    NSString* defPwd = @"123456";
    NSString* inUser = _tfUserName.text;
    NSString* inPws = _tfPassword.text;
    NSString* msg = [NSString stringWithFormat:@"欢迎你, %@", inUser];
    NSLog(@"u=%@, p=%@", inUser, inPws);
    if ([defUser isEqualToString:inUser] && [defPwd isEqualToString:inPws]){
        UIAlertView* v = [[UIAlertView alloc] initWithTitle:@"登录成功" message:[NSString stringWithFormat:@"欢迎你, %@", inUser] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [v show];
    }else {
        [[[UIAlertView alloc] initWithTitle:@"登陆失败" message:@"用户名或者密码错误" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil] show];
    }
}

- (void)testAlertView {
    _alertView = [[UIAlertView alloc] initWithTitle:@"警告" message:@"您的手机电量过低，即将自动关机，请自行保存好相关数据" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"OK",@"我知道了",@"朕知道了", nil];
    _alertView.alertViewStyle = UIAlertViewStyleLoginAndPasswordInput;
    [_alertView show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSLog(@"You clicked %ld", buttonIndex);
}

- (void)alertView:(UIAlertView *)alertView willDismissWithButtonIndex:(NSInteger)buttonIndex{
    NSLog(@"Alert will dismiss!");
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
    NSLog(@"Alert dismiss!");
}

- (void)testIndicatorView {
    _indicatorView = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(100, 400, 200, 200)];
    _indicatorView.activityIndicatorViewStyle = UIActivityIndicatorViewStyleWhiteLarge;
    self.view.backgroundColor = [UIColor blackColor];
    //[_indicatorView setHidesWhenStopped:NO];
    [self.view addSubview:_indicatorView];
    [_indicatorView startAnimating];
    [NSTimer scheduledTimerWithTimeInterval:5 target:self selector:@selector(stopIndicator:) userInfo:nil repeats:NO];
    
    
}

- (void)stopIndicator: (NSTimer*) timer{
    [timer invalidate];
    [_indicatorView stopAnimating];
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)addTwoTestBtn {
    NSArray* arr = [NSArray arrayWithObjects:@"启动警告按钮",@"启动等待提示按钮", nil] ;
    for (int i = 0; i < arr.count; i++){
        UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        btn.frame = CGRectMake(100, 100+100*i, 100, 40);
        btn.tag = 101+i;
        [btn setTitle:[arr objectAtIndex:i]  forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(btnPress:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btn];
    }
}

- (void)btnPress: (UIButton*) btn {
    switch (btn.tag) {
        case 101:
            [self testAlertView];
            break;
        case 102:
            [self testIndicatorView];
            break;
        default:
            break;
    }
}

- (void)testTextField {
    self.textFieldUsername = [[UITextField alloc] initWithFrame:CGRectMake(100, 100, 300, 40)];
    self.textFieldUsername.placeholder = @"请输入用户名";
    self.textFieldUsername.borderStyle = UITextBorderStyleRoundedRect;
    self.textFieldUsername.keyboardType = UIKeyboardTypeDefault;
    self.textFieldUsername.delegate = self;
    self.textFieldUsername.tag = 101;
    [self.view addSubview:self.textFieldUsername];
    
    self.textFieldPassword = [[UITextField alloc] initWithFrame:CGRectMake(100, 300, 300, 40)];
    self.textFieldPassword.placeholder = @"请输入密码";
    self.textFieldPassword.borderStyle = UITextBorderStyleRoundedRect;
    self.textFieldPassword.keyboardType = UIKeyboardTypeDefault;
    self.textFieldPassword.delegate = self;
    self.textFieldPassword.secureTextEntry = YES;
    self.textFieldPassword.tag = 102;
    [self.view addSubview:self.textFieldPassword];
}

- (void) textFieldDidBeginEditing:(UITextField *)textField{
    NSLog(@"Begin editing");
}

- (void) textFieldDidEndEditing:(UITextField *)textField {
    NSLog(@"End editing text=%@", textField.text);
    
}

- (BOOL) textFieldShouldBeginEditing:(UITextField *)textField {
    if(textField.tag == 102 && self.textFieldUsername.text == nil){
        return NO;
    }
    return YES;
}

- (BOOL) textFieldShouldEndEditing:(UITextField *)textField {
    if(textField.tag == 102 && textField.text.length < 8) {
        return NO;
    }
    return YES;
}

- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.textFieldUsername resignFirstResponder];
    [self.textFieldPassword resignFirstResponder];
    [_tfUserName resignFirstResponder];
    [_tfPassword resignFirstResponder];
}

- (void) testSomeObj {
    
    NSString* str1 = [NSString stringWithFormat:@"我的名字叫做%@Y", @"嬴政"];
    NSString* str2 = @"我的名字叫做嬴政y";
    if (str1 == str2){
        NSLog(@"!!!!!!!!!!!!!!!str1==str2");
    }
    if ([str1 isEqualToString:str2]){
        NSLog(@"###########str1 equals str2");
    }
    
    if ([str1 compare: str2 options: NSCaseInsensitiveSearch | NSNumericSearch] == NSOrderedSame){
        NSLog(@"str compare match str2");
    }
    NSRange range = [str1 rangeOfString:@"叫"];
    if (range.location != NSNotFound){
        NSLog(@"location = %ld, length = %ld", range.location, range.length);
        
    }
    //NSLog(@"%@", str1);

}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //[self addTwoTestBtn];
    
    //[self testTextField];
    
    //[self testSomeObj];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
