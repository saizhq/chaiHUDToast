//
//  UIView+CharlesHUD.h
//  CodeDemo
//
//  Created by 柴智权 on 2017/9/27.
//  Copyright © 2017年 柴智权. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NSString * CSToastPositionTop       = @"CSToastPositionTop";
NSString * CSToastPositionCenter    = @"CSToastPositionCenter";
NSString * CSToastPositionBottom    = @"CSToastPositionBottom";

// Keys for values associated with toast views
static const NSString * CSToastTimerKey             = @"CSToastTimerKey";
static const NSString * CSToastDurationKey          = @"CSToastDurationKey";
static const NSString * CSToastPositionKey          = @"CSToastPositionKey";
static const NSString * CSToastCompletionKey        = @"CSToastCompletionKey";

// Keys for values associated with self
static const NSString * CSToastActiveToastViewKey   = @"CSToastActiveToastViewKey";
static const NSString * CSToastActivityViewKey      = @"CSToastActivityViewKey";
static const NSString * CSToastQueueKey             = @"CSToastQueueKey";

@interface UIView (Charles)

/**
 *  显示纯文本 加一个转圈
 *
 *  @param aText 要显示的文本
 */
+ (void)HUDShowText:(NSString *)aText;

/**
 *  显示错误信息
 *
 *  @param aText 错误信息文本
 */
+ (void)HUDShowErrorText:(NSString *)aText;

/**
 *  显示成功信息
 *
 *  @param aText 成功信息文本
 */
+ (void)HUDShowSuccessText:(NSString *)aText;

/**
 *  只显示一个加载框
 */
+ (void)HUDShowLoading;

/**
 *  隐藏加载框（所有类型的加载框 都可以通过这个方法 隐藏）
 */
+ (void)HUDDismissLoading;

/**
 *  显示百分比
 *
 *  @param progress 百分比（整型 100 = 100%）
 */
+ (void)HUDShowProgress:(NSInteger)progress;

/**
 *  显示图文提示
 *
 *  @param image 自定义的图片
 *  @param aText 要显示的文本
 */
+ (void)HUDShowImage:(UIImage*)image text:(NSString*)aText;

@end

@interface UIView (Toast)

- (void)makeToast:(NSString *)message;

- (void)makeToast:(NSString *)message duration:(NSTimeInterval)duration;

@end



