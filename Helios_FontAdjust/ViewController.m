//
//  ViewController.m
//  Helios_FontAdjust
//
//  Created by beyo-zhaoyf on 2017/7/25.
//  Copyright © 2017年 beyo-zhaoyf. All rights reserved.
//

#import "ViewController.h"
#define SCREEN_WIDTH   [UIScreen mainScreen].bounds.size.width
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"字体自适应后效果";
    // Do any additional setup after loading the view, typically from a nib.
    UILabel *lable = [[UILabel alloc]initWithFrame:CGRectMake(0, 100, SCREEN_WIDTH, 70)];
    lable.textColor = [UIColor blackColor];
    lable.numberOfLines = 0;
    lable.backgroundColor = [UIColor grayColor];
    lable.font = [UIFont systemFontOfSize:15.0];
    [self.view addSubview:lable];
    lable.text = @"简单的脱下衣服一个灵魂的口袋装进夜晚手指一触就碎的困惑在昨天还是心爱的世界一只蝴蝶正落在窗台没有更深刻比这还重要 简单的生活清晨，把房间打扫一遍再赶走几只苍蝇但是蚊子把身体内";
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
