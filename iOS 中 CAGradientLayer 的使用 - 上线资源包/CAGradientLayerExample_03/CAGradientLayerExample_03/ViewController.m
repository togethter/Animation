//
//  ViewController.m
//  CAGradientLayerExample_03
//
//  http://www.cnblogs.com/YouXianMing/
//  https://github.com/YouXianMing
//  you_xian_1030@163.com
//  QQ - 705786299
//
//  Created by YouXianMing on 14/12/27.
//  Copyright (c) 2014年 YouXianMing. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSTimer          *timer;
@property (nonatomic, strong) CAGradientLayer  *gradientLayer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // 设置背景色
    self.view.layer.contents = (__bridge id)([UIImage imageNamed:@"bg"].CGImage);
    
    // 渐变图层
    self.gradientLayer       = [CAGradientLayer layer];
    self.gradientLayer.frame = self.view.bounds;
    
    // 设置颜色
    self.gradientLayer.colors = @[(id)[[UIColor clearColor] colorWithAlphaComponent:0.0f].CGColor,
                                  (id)[[UIColor redColor] colorWithAlphaComponent:1.0f].CGColor];
    self.gradientLayer.locations = @[[NSNumber numberWithFloat:0.7f],
                                     [NSNumber numberWithFloat:1.0f]];
    
    // 添加渐变图层
    [self.view.layer addSublayer:self.gradientLayer];
    
    // 添加定时器
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.f
                                                  target:self
                                                selector:@selector(timerEvent)
                                                userInfo:nil
                                                 repeats:YES];
}

- (void)timerEvent {
    self.gradientLayer.locations = @[[NSNumber numberWithFloat:arc4random()%100/100.f],
                                     [NSNumber numberWithFloat:1.0f]];
    
    self.gradientLayer.colors = @[(id)[[UIColor clearColor] colorWithAlphaComponent:0.0f].CGColor,
                                  (id)[[UIColor colorWithRed:arc4random()%255/255.f
                                                       green:arc4random()%255/255.f
                                                        blue:arc4random()%255/255.f
                                                       alpha:1.0] colorWithAlphaComponent:1.0f].CGColor];
}

@end
