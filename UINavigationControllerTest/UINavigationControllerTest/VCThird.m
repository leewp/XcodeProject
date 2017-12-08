//
//  VCThird.m
//  UINavigationControllerTest
//
//  Created by 李文鹏 on 17/12/8.
//  Copyright © 2017年 李文鹏. All rights reserved.
//

#import "VCThird.h"
#import "VCFourth.h"

@interface VCThird ()

@end

@implementation VCThird

- (void)initVC {
    self.title = @"视图三";
    self.view.backgroundColor = [UIColor yellowColor];
    UIBarButtonItem* nextBtn = [[UIBarButtonItem alloc] initWithTitle:@"视图四" style:UIBarButtonItemStylePlain target:self action:@selector(pressNext)];
    self.navigationItem.rightBarButtonItem = nextBtn;
    
    UIBarButtonItem* preBtn = [[UIBarButtonItem alloc] initWithTitle:@"返回上一级" style:UIBarButtonItemStylePlain target:self action:@selector(pressPre)];
    self.navigationItem.leftBarButtonItem = preBtn;
}

- (void)pressNext {
    VCFourth* vc4 = [[VCFourth alloc] init];
    [self.navigationController pushViewController:vc4 animated:YES];
}

- (void)pressPre {
    [self.navigationController popViewControllerAnimated:YES];
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
