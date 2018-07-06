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
    [self.view addSubview:btn];
    
    
    btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"自定义控件" forState:UIControlStateNormal];
    btn.frame = CGRectMake(30, 100, 100, 30);
    [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(cusBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
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




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
