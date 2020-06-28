//
//  ViewController.m
//  ColorImageView
//
//  Created by YouXianMing on 15/1/9.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "ViewController.h"
#import "ColorUIImageView.h"

@interface ViewController ()

@property (nonatomic, strong) ColorUIImageView *colorView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.colorView        = [[ColorUIImageView alloc] initWithFrame:CGRectMake(0, 0, 198, 253)];
    self.colorView.center = self.view.center;
    self.colorView.image  = [UIImage imageNamed:@"bg"];
    [self.view addSubview:self.colorView];
    
    [self performSelector:@selector(event)
               withObject:nil
               afterDelay:1.f];
}

- (void)event {
    self.colorView.direction = DOWN;
    self.colorView.color     = [UIColor cyanColor];
    self.colorView.percent   = 0.5;
}

@end
