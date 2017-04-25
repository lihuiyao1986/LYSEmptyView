//
//  ViewController.m
//  LYSEmptyView
//
//  Created by jk on 2017/4/25.
//  Copyright © 2017年 Goldcard. All rights reserved.
//

#import "ViewController.h"
#import "UIView+empty.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addEmptyView:@{@"imageUrl":@"empty-icon",@"title":@"暂时查询不到轨迹信息"}];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(10.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.view removeEmptyView];
    });
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
