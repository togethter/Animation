//
//  ViewController.m
//  KeyFrameAnimation
//
//  Created by YouXianMing on 15/1/23.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "ViewController.h"
#import "YXEasing.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // 添加显示用的view
    UIView *showView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    showView.layer.cornerRadius  = 50;
    showView.layer.masksToBounds = YES;
    showView.backgroundColor     = [UIColor redColor];
    [self.view addSubview:showView];
    
//    // 基本动画类型
//    CABasicAnimation *basicAnimation = [CABasicAnimation animation];
//    basicAnimation.keyPath           = @"position";
//    basicAnimation.duration          = 4.f;
//    
//    // fromValue = A | toValue = B
//    basicAnimation.fromValue = [NSValue valueWithCGPoint:showView.center];
//    basicAnimation.toValue   = [NSValue valueWithCGPoint:CGPointMake(200, 200)];
//    
//    showView.center = CGPointMake(200, 200);
//    [showView.layer addAnimation:basicAnimation forKey:nil];
    
    // 关键帧动画类型
    CAKeyframeAnimation *keyFrameAnimation = [CAKeyframeAnimation animation];
    keyFrameAnimation.keyPath              = @"position";
    keyFrameAnimation.duration             = 4.f;
    keyFrameAnimation.values = [YXEasing calculateFrameFromPoint:showView.center
                                                         toPoint:CGPointMake(200, 200)
                                                            func:BounceEaseInOut
                                                      frameCount:30 * 4];
    showView.center = CGPointMake(200, 200);
    [showView.layer addAnimation:keyFrameAnimation forKey:nil];
}

@end
