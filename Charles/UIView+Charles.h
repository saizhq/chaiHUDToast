//
//  UIView+CharlesHUD.h
//  CodeDemo
//
//  Created by saizhq on 2017/9/27.
//  Copyright © 2017年 saizhq. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

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

@interface UIView (CharlesT)

/**
 *  Toast 默认2秒提示
 *
 *  @param message 自定义的消息
 */
- (void)CharlesToast:(NSString *)message;

/**
 *  Toast 自定义消失时间
 *
 *  @param message 自定义的消息
 *  @param duration 消失时间
 */
- (void)CharlesToast:(NSString *)message duration:(NSTimeInterval)duration;

/**
 *  带图片的Toast 
 *
 *  @param message 自定义的消息
 *  @param duration 消失时间
 *  @param title 标题
 *  @param image 图片
 */
- (void)CharlesToast:(NSString *)message duration:(NSTimeInterval)duration title:(NSString*)title image:(UIImage *)image;
@end



