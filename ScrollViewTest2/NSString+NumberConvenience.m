//
//  NSString+NumberConvenience.m
//  ScrollViewTest2
//
//  Created by 李文鹏 on 17/12/1.
//  Copyright © 2017年 李文鹏. All rights reserved.
//

#import "NSString+NumberConvenience.h"

@implementation NSString (NumberConvenience)

- (NSNumber *) lengthAsNumber {
    NSUInteger length = [self length];
    return ([NSNumber numberWithUnsignedInteger:length]);
}

@end
