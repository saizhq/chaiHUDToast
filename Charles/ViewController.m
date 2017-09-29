//
//  ViewController.m
//  Charles
//
//  Created by saizhq on 2017/9/27.
//  Copyright © 2017年 saizhq. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Charles.h"

@interface ViewController ()
@property (nonatomic, assign) CGFloat percent;
@property (nonatomic, strong) NSTimer *timer;
@property (weak, nonatomic) IBOutlet UIView *toastView;
@property (weak, nonatomic) IBOutlet UIView *HUDView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view CharlesToast:@"默认吐司，2秒后消失"];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)CharlersLoading:(UIButton *)sender {
    [UIView HUDShowLoading];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3.0f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [UIView HUDDismissLoading];
    });
}



- (IBAction)CharlersText:(id)sender {
    [UIView HUDShowText:@"HelloCharles!!!!"];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3.0f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [UIView HUDDismissLoading];
    });
}
- (IBAction)CharlesStext:(id)sender {
    [UIView HUDShowSuccessText:@"成功了，开不开心？"];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3.0f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [UIView HUDDismissLoading];
    });
}
- (IBAction)CharlesFtext:(id)sender {
    [UIView HUDShowErrorText:@"失败了,惊不惊喜？"];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3.0f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [UIView HUDDismissLoading];
    });
}
- (IBAction)CharlesProgress:(id)sender {
    self.timer = [NSTimer timerWithTimeInterval:0.1 target:self selector:@selector(showPercent) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:self.timer forMode:NSRunLoopCommonModes];
}
- (IBAction)CharlesImage:(id)sender {
    [UIView HUDShowImage:[UIImage imageNamed:@"charles"] text:@"I'm Professor X"];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3.0f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [UIView HUDDismissLoading];
    });
}

- (void)showPercent
{
    self.percent += 5;
    [UIView HUDShowProgress:self.percent];
    
    if (self.percent >= 100) {
        [self.timer invalidate];
        self.timer = nil;
        [UIView HUDDismissLoading];
        self.percent = 0;
    }
}
- (IBAction)testToast:(id)sender {
    [self.toastView CharlesToast:@"66666" duration:5];
}
- (IBAction)ImageToastTest:(id)sender {
    [self.view CharlesToast:@"皇家澳门赌场已上线" duration:2.5 title:@"令人振奋的消息" image:[UIImage imageNamed:@"charles"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
