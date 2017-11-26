//
//  ViewController2.m
//  SecondXcodeProject
//
//  Created by 李文鹏 on 17/11/26.
//  Copyright © 2017年 李文鹏. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor orangeColor];
    
}

- (void)viewWillAppear:(BOOL)animated {
    NSLog(@"vc2 视图即将显示");
}

- (void)viewDidAppear:(BOOL)animated {
    NSLog(@"vc2 视图已经显示");
}

- (void)viewWillDisappear:(BOOL)animated {
    NSLog(@"vc2 视图即将消失");
}

- (void)viewDidDisappear:(BOOL)animated {
    NSLog(@"vc2 视图已经消失");
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
