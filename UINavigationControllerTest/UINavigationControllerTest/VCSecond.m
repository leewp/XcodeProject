//
//  VCSecond.m
//  UINavigationControllerTest
//
//  Created by 李文鹏 on 17/12/8.
//  Copyright © 2017年 李文鹏. All rights reserved.
//

#import "VCSecond.h"
#import "VCThird.h"

@interface VCSecond ()

@end

@implementation VCSecond

- (void)initVC {
    self.title = @"视图二";
    self.view.backgroundColor = [UIColor orangeColor];
    UIBarButtonItem* nextBtn = [[UIBarButtonItem alloc] initWithTitle:@"视图三" style:UIBarButtonItemStylePlain target:self action:@selector(pressNext)];
    self.navigationItem.rightBarButtonItem = nextBtn;
    
}

- (void)pressNext {
    VCThird* vc3 = [[VCThird alloc] init];
    [self.navigationController pushViewController:vc3 animated:YES];
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
