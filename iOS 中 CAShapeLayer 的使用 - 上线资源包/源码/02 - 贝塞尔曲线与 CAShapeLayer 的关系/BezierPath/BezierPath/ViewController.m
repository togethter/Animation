//
//  ViewController.m
//  BezierPath
//
//  Created by YouXianMing on 14/12/14.
//  Copyright (c) 2014年 YouXianMing. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // 创建椭圆形贝塞尔曲线
    UIBezierPath *oval = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, 200, 100)];
    
    // 创建矩形贝塞尔曲线
    UIBezierPath *rect = [UIBezierPath bezierPathWithRect:CGRectMake(0, 0, 200, 100)];
    
    // 创建圆形贝塞尔曲线
    UIBezierPath *circle = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, 100, 100)];
    
    // 创建CAShapeLayer
    CAShapeLayer *shape = [CAShapeLayer layer];
    shape.frame         = CGRectMake(0, 0, 200, 50);
    shape.position      = self.view.center;
    
    // 显示CAShapeLayer的边界
    shape.borderWidth   = 1.f;
    
    // 禁止内容显示超出CAShapeLayer的frame值
    shape.masksToBounds = YES;
    
    // 修改贝塞尔曲线的填充颜色
    shape.fillColor     = [UIColor redColor].CGColor;
    
    // 建立贝塞尔曲线与CAShapeLayer之间的关联
    shape.path = circle.CGPath;
    
    // 添加并显示
    [self.view.layer addSublayer:shape];
}

@end
