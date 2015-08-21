//
//  ViewController.m
//  Example
//
//  Created by 西村 拓 on 2015/08/22.
//  Copyright (c) 2015年 TakuNishimura. All rights reserved.
//

#import "ViewController.h"

#import "TAKGAUtil.h"

static NSString * const GA_TRACKING_ID = @"UA-66615385-1";

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [TAKGAUtil defaultSettingWithTracingId:GA_TRACKING_ID];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma Send GA
- (IBAction)screnButtonTapped:(UIButton *)sender {
    [TAKGAUtil trackScreen:sender.titleLabel.text];
}

- (IBAction)eventButtonTapped:(UIButton *)sender {
    [TAKGAUtil trackEventWithCategory:@"Sample"
                               action:@"Button"
                                label:sender.titleLabel.text
                                value:sender.tag];
}

- (IBAction)bothButtonTapped:(UIButton *)sender {
    [TAKGAUtil trackEventWithScreen:sender.titleLabel.text
                           category:@"Sample"
                             action:@"Button"
                              label:sender.titleLabel.text
                              value:sender.tag];
}

@end
