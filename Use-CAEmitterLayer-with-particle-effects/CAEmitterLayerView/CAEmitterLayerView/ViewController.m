//
//  ViewController.m
//  CAEmitterLayerView
//
//  Created by YouXianMing on 15/5/14.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "ViewController.h"
#import "CAEmitterLayerView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    CAEmitterLayerView *layerView = [[CAEmitterLayerView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    
    NSLog(@"%@", layerView.layer);
}

@end
