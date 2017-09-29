//
//  UIView+CharlesHUD.m
//  CodeDemo
//
//  Created by saizhq on 2017/9/27.
//  Copyright © 2017年 saizhq. All rights reserved.
//

#import "UIView+Charles.h"
#import "CharlersHUD.h"
#import "UIView+Toast.h"

@implementation UIView (Charles)

+ (void)HUDShowText:(NSString *)aText
{
    [CharlersHUD showWithStatus:aText];
}
- (void)HUDShowText:(NSString *)aText
{
    [CharlersHUD showWithStatus:aText];
}


+ (void)HUDShowErrorText:(NSString *)aText
{
    [CharlersHUD showErrorWithStatus:aText];
}

+ (void)HUDShowSuccessText:(NSString *)aText
{
    [CharlersHUD showSuccessWithStatus:aText];
}

+ (void)HUDShowLoading
{
    [CharlersHUD show];
}
- (void)HUDShowLoading
{
    [CharlersHUD show];
}

+ (void)HUDDismissLoading
{
    [CharlersHUD dismiss];
}

+ (void)HUDShowProgress:(NSInteger)progress
{
    [CharlersHUD showProgress:progress/100.0 status:[NSString stringWithFormat:@"%li%%",(long)progress]];
}

+ (void)HUDShowImage:(UIImage*)image text:(NSString*)aText
{
    [CharlersHUD showImage:image status:aText];
}

@end

@implementation UIView (CharlesT)

- (void)CharlesToast:(NSString *)message{
    //[self makeToast:message];
    [self makeToast:message duration:2];
}

- (void)CharlesToast:(NSString *)message duration:(NSTimeInterval)duration{
    [self makeToast:message duration:duration];
}

- (void)CharlesToast:(NSString *)message duration:(NSTimeInterval)duration title:(NSString*)title image:(UIImage *)image{
    
    CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
    
    UIView *toastView =  [self toastViewForMessage:message title:title image:image style:style];
    
    CGPoint tpoint = self.center;
    tpoint.y =  tpoint.y*2 -toastView.frame.size.height - 20 ;
    
    [self showToast:toastView duration:2.5 position:CSToastPositionBottom completion:^(BOOL didTap) {
        return;
    }];
}

@end
