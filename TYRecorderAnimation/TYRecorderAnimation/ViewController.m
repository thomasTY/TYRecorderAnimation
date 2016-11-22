//
//  ViewController.m
//  TYRecorderAnimation
//
//  Created by thomasTY on 16/11/20.
//  Copyright © 2016年 thomasTY. All rights reserved.
//

#import "ViewController.h"
#import "TYRecorderAnimationView.h"

#define totalVolume 100.0
#define timeDuration 1.0

@interface ViewController ()
@property(nonatomic,strong)TYRecorderAnimationView * dynamicView;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setupUI];
}
- (void)setupUI
{
    self.view.backgroundColor = [UIColor orangeColor];
    [NSTimer scheduledTimerWithTimeInterval:timeDuration target:self selector:@selector(funcc) userInfo:nil repeats:YES];
    _dynamicView = [TYRecorderAnimationView recorderWithFrameX:7 frameY:5 height:600 themeColor:[UIColor whiteColor] frequency:timeDuration];
    [self.view addSubview:_dynamicView];
}
-(void)funcc
{
    CGFloat soundVolume = arc4random_uniform(totalVolume+1) / totalVolume;
    NSLog(@"%f",soundVolume);
    [_dynamicView refreshUIWithSoundVolume:soundVolume];
}
@end
