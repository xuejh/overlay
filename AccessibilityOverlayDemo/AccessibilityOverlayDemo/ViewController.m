//
//  ViewController.m
//  AccessibilityOverlayDemo
//
//  Created by 薛锦辉 on 2018/6/28.
//  Copyright © 2018年 薛锦辉. All rights reserved.
//

#import "ViewController.h"
#import "SysViewController.h"
#import "CustomViewController.h"
#import "CustomView.h"
#import "CustomView1.h"

#import "DrawView.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"系统控件" forState:UIControlStateNormal];
    btn.frame = CGRectMake(30, 60, 100, 30);
    [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(sysBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [btn setAccessibilityTraits:UIAccessibilityTraitTabBar];
    [self.view addSubview:btn];
    
    
    btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"自定义控件" forState:UIControlStateNormal];
    btn.frame = CGRectMake(30, 100, 100, 30);
    [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(cusBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"直接读出" forState:UIControlStateNormal];
    btn.frame = CGRectMake(30, 140, 100, 30);
    [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(readBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    CustomView * view = [[CustomView alloc]init];
    view.frame = CGRectMake(30, 180, 100, 30);
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    
    CustomView1 * view1 = [[CustomView1 alloc]init];
    view1.frame = CGRectMake(30,220 , 100, 50);
    view1.backgroundColor = [UIColor grayColor];
    [self.view addSubview:view1];
    
    
    DrawView * draw = [[DrawView alloc]init];
    draw.frame = CGRectMake(30, 280, 100, 50);
    [self.view addSubview:draw];
    
    UISlider *slider = [[UISlider alloc]initWithFrame:CGRectMake(0, 400,320 , 20)];
    [self.view addSubview:slider];
    
    
    
}


- (void)sysBtnClick{
    SysViewController * sys = [[SysViewController alloc]init];
    UINavigationController * nav = [[UINavigationController alloc]initWithRootViewController:sys];
    [self presentViewController:nav animated:YES completion:^{
        
    }];
}


- (void)cusBtnClick{
    
    CustomViewController * custom = [[CustomViewController alloc]init];
    UINavigationController * nav = [[UINavigationController alloc]initWithRootViewController:custom];
    [self presentViewController:nav animated:YES completion:^{
        
    }];
}

- (void)readBtnClick{
    
    //直接读出一句话
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        UIAccessibilityPostNotification(UIAccessibilityAnnouncementNotification, @"read me11111");
    });
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
