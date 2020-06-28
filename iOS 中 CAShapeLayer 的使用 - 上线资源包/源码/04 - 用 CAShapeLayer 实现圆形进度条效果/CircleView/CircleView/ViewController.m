//
//  ViewController.m
//  CircleView
//
//  Created by YouXianMing on 14/12/14.
//  Copyright (c) 2014年 YouXianMing. All rights reserved.
//

#import "ViewController.h"
#import "CircleView.h"

@interface ViewController ()

{
    CircleView *circle;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    circle             = [[CircleView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    circle.center      = self.view.center;
    circle.startValue  = 0.5;
    circle.lineWidth   = 3.f;
    circle.lineColor   = [UIColor grayColor];
    [self.view addSubview:circle];
    
    [self performSelector:@selector(delayAnimation)
               withObject:nil
               afterDelay:3.f];
}

- (void)delayAnimation {
    circle.value = 1.f;
}

@end
