//
//  VCFourth.m
//  UINavigationControllerTest
//
//  Created by 李文鹏 on 17/12/8.
//  Copyright © 2017年 李文鹏. All rights reserved.
//

#import "VCFourth.h"

@interface VCFourth ()

@end

@implementation VCFourth

- (void)initVC {
    self.title = @"视图四";
    self.view.backgroundColor = [UIColor greenColor];
    UIBarButtonItem* rootBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRewind target:self action:@selector(pressRoot)];
    self.navigationItem.rightBarButtonItem = rootBtn;
}

- (void)pressRoot {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initVC];
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
