//
//  SYToast+SYCategory.m
//  zhangshaoyu
//
//  Created by zhangshaoyu on 15/7/30.
//  Copyright (c) 2015年 zhangshaoyu. All rights reserved.
//

#import "SYToast+SYCategory.h"

@implementation SYToast (SYCategory)

// 实例化iToast
+ (void)alertWithTitle:(NSString *)title
{
    if ([self isNullNSStringWithText:title])
    {
        return ;
    }
    
    [[SYToast shareIToast] showText:title postion:iToastPositionTop];
}

+ (void)alertWithTitleCenter:(NSString *)title
{
    if ([self isNullNSStringWithText:title])
    {
        return ;
    }
    
    [[SYToast shareIToast] showText:title postion:iToastPositionCenter];
}

+ (void)alertWithTitleBottom:(NSString *)title
{
    if ([self isNullNSStringWithText:title])
    {
        return ;
    }
    
    [[SYToast shareIToast] showText:title postion:iToastPositionBottom];
}

// 隐藏iToast
+ (void)hiddenIToast
{
    [[SYToast shareIToast] hidden];
}

/// 字符非空判断（可以是空格字符串）
+ (BOOL)isNullNSStringWithText:(NSString *)text
{
    if (!text || [text isEqualToString:@""] || 0 == text.length)
    {
        return YES;
    }
    
    return NO;
}

@end