//
//  UIView+CharlesHUD.m
//  CodeDemo
//
//  Created by 柴智权 on 2017/9/27.
//  Copyright © 2017年 柴智权. All rights reserved.
//

#import "UIView+Charles.h"
#import "CharlersHUD.h"


@implementation UIView (Charles)

+ (void)HUDShowText:(NSString *)aText
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
