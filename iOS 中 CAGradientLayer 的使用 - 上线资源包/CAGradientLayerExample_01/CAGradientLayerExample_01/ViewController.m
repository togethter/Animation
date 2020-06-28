//
//  ViewController.m
//  CAGradientLayerExample_01
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
#import "CAShapeLayer+Circle.h"

@interface ViewController ()

@property (nonatomic, strong) NSTimer         *timer;
@property (nonatomic, strong) CAGradientLayer *faucet;
@property (nonatomic, strong) CAShapeLayer    *circleLayer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 设置背景色
    self.view.backgroundColor = [UIColor colorWithRed:0.878 green:0.878 blue:0.878 alpha:1];
    
    // 创建形状遮罩
    self.circleLayer = [CAShapeLayer LayerWithCircleCenter:CGPointMake(82, 82)
                                                    radius:80
                                                startAngle:DEGREES(0)
                                                  endAngle:DEGREES(360)
                                                 clockwise:YES
                                           lineDashPattern:@[@10, @10]];
    self.circleLayer.strokeColor   = [UIColor blackColor].CGColor;  // 边缘线的颜色
    self.circleLayer.lineCap       = kCALineCapSquare;              // 边缘线的类型
    self.circleLayer.lineWidth     = 4.f;                           // 线条宽度
    self.circleLayer.strokeStart   = 0.0f;
    self.circleLayer.strokeEnd     = 1.0f;
    
    // 创建渐变图层
    self.faucet          = [CAGradientLayer layer];
    self.faucet.frame    = CGRectMake(0, 0, 200, 200);
    self.faucet.position = self.view.center;
    
    // 以CAShapeLayer的形状作为遮罩是实现特定颜色渐变的关键
    self.faucet.mask   = self.circleLayer;
    self.faucet.colors = @[(id)[UIColor greenColor].CGColor,
                           (id)[UIColor redColor].CGColor,
                           (id)[UIColor cyanColor].CGColor,
                           (id)[UIColor purpleColor].CGColor,
                           (id)[UIColor yellowColor].CGColor];
    
    // 设定动画时间
    self.faucet.speed = 0.5f;
    
    // 添加到系统图层中
    [self.view.layer addSublayer:self.faucet];
    
    // 创建定时器
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.f
                                                  target:self
                                                selector:@selector(timerEvent)
                                                userInfo:nil
                                                 repeats:YES];
}

/**
 *  定时器事件
 */
- (void)timerEvent {
    self.faucet.colors = @[(id)[UIColor colorWithRed:arc4random()%255/255.f
                                               green:arc4random()%255/255.f
                                                blue:arc4random()%255/255.f
                                               alpha:1].CGColor,
                           (id)[UIColor colorWithRed:arc4random()%255/255.f
                                               green:arc4random()%255/255.f
                                                blue:arc4random()%255/255.f
                                               alpha:1].CGColor,
                           (id)[UIColor colorWithRed:arc4random()%255/255.f
                                               green:arc4random()%255/255.f
                                                blue:arc4random()%255/255.f
                                               alpha:1].CGColor,
                           (id)[UIColor colorWithRed:arc4random()%255/255.f
                                               green:arc4random()%255/255.f
                                                blue:arc4random()%255/255.f
                                               alpha:1].CGColor,
                           (id)[UIColor colorWithRed:arc4random()%255/255.f
                                               green:arc4random()%255/255.f
                                                blue:arc4random()%255/255.f
                                               alpha:1].CGColor];
}

@end
