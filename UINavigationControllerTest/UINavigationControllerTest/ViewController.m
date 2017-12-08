//
//  ViewController.m
//  UINavigationControllerTest
//
//  Created by 李文鹏 on 17/12/7.
//  Copyright © 2017年 李文鹏. All rights reserved.
//

#import "ViewController.h"
#import "VCSecond.h"
#import "VCThird.h"
#import "VCFourth.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor redColor];
    self.navigationItem.title = @"视图一";
    UIBarButtonItem* btnEdit = [[UIBarButtonItem alloc] initWithTitle:@"编辑" style:UIBarButtonItemStyleDone target:self action:@selector(pressEdit: )];
    self.navigationItem.leftBarButtonItem = btnEdit;
    
    
    UIBarButtonItem* btnNext = [[UIBarButtonItem alloc] initWithTitle:@"视图二" style:UIBarButtonItemStylePlain target:self action:@selector(pressC:)];
    self.navigationItem.rightBarButtonItem = btnNext;
    
    UIBarButtonItem* btn2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRefresh target:self action:@selector(pressToolBarBtn:)];
    btn2.tag = 102;
    
    UIBarButtonItem* btn3 = [[UIBarButtonItem alloc] initWithTitle:@"视图三" style:UIBarButtonItemStylePlain target:self action:@selector(pressToolBarBtn:)];
    btn3.tag = 103;
    
    UIBarButtonItem* btn4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(pressToolBarBtn:)];
    btn4.tag = 104;
    
    UIBarButtonItem* btnF1 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    btnF1.width = 40.0;
    UIBarButtonItem* btnF2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    
    NSArray* array = [NSArray arrayWithObjects:btn2, btnF1, btn3, btnF2, btn4, nil];
    self.toolbarItems = array;
    
}

- (void) pressEdit: (UIBarButtonItem*) btn {
    NSLog(@"点击了编辑");
    self.navigationController.toolbarHidden = !self.navigationController.toolbarHidden;

}

- (void) pressToolBarBtn:(UIBarButtonItem*) btn{
    UIViewController* vc;
    switch (btn.tag) {
        case 102:
            vc = [[VCSecond alloc] init];
            break;
        case 103:
            vc = [[VCThird alloc] init];
            break;
        case 104:
            vc = [[VCFourth alloc] init];
            break;
            
        default:
            vc = nil;
            break;
    }
    if (vc) {
        [self.navigationController pushViewController:vc animated:YES];
    }
}

- (void) pressC: (UIBarButtonItem*) btn {
    VCSecond* vc2 = [[VCSecond alloc] init];
    [self.navigationController pushViewController:vc2 animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
