//
//  UIFont+Adjust.m
//  Helios_FontAdjust
//
//  Created by beyo-zhaoyf on 2017/7/25.
//  Copyright © 2017年 beyo-zhaoyf. All rights reserved.
//

#import "UIFont+Adjust.h"
#import <objc/runtime.h>

#define SCREEN_WIDTH 375 //默认
@implementation UIFont (Adjust)
+ (void)load {
    //替换后的类方法
    Method newMethod = class_getClassMethod([self class], @selector(adjustFontSize:));
    //获取需要替代的方法
    Method method = class_getClassMethod([self class], @selector(systemFontOfSize:));
    //交换
    method_exchangeImplementations(newMethod, method);
}
+ (UIFont *)adjustFontSize:(CGFloat )fontSize {
    UIFont *newFont = nil;
    newFont = [UIFont adjustFontSize:fontSize * [UIScreen mainScreen].bounds.size.width/SCREEN_WIDTH];
    return newFont;
}
@end
