//
//  ViewController.m
//  CAGradientLayerExample_02
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
#import "MulticolorView.h"

@interface ViewController ()

@property (nonatomic, strong) NSTimer         *timer;
@property (nonatomic, strong) MulticolorView  *showView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithRed:0.878 green:0.878 blue:0.878 alpha:1];
    
    _showView           = [[MulticolorView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    _showView.lineWidth = 3.f;
    _showView.sec       = 2.f;
    _showView.colors    = @[(id)[UIColor cyanColor].CGColor,
                            (id)[UIColor yellowColor].CGColor,
                            (id)[UIColor cyanColor].CGColor];
    _showView.center    = self.view.center;
    _timer              = [NSTimer scheduledTimerWithTimeInterval:1
                                                           target:self
                                                         selector:@selector(event:)
                                                         userInfo:nil
                                                          repeats:YES];
    
    [self.view addSubview:_showView];
    [_showView startAnimation];
}

- (void)event:(id)object
{
    _showView.percent = arc4random()%100/100.f;
}


@end
