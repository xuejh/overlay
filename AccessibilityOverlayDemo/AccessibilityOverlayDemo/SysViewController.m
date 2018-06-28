//
//  SysViewController.m
//  AccessibilityOverlayDemo
//
//  Created by 薛锦辉 on 2018/6/28.
//  Copyright © 2018年 薛锦辉. All rights reserved.
//

#import "SysViewController.h"
#import "TableViewViewController.h"

@interface SysViewController ()

@end

@implementation SysViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"返回" forState:UIControlStateNormal];
    btn.frame = CGRectMake(30, 60, 100, 30);
    [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(popBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
    UILabel * label = [[UILabel alloc]initWithFrame:CGRectMake(30, 100, 100, 30)];
    label.text = @"dfdl 我";
    [self.view addSubview:label];
    
    UIImageView * imageView = [[UIImageView alloc]initWithFrame:CGRectMake(30, 150, 100, 100)];
    imageView.image = [UIImage imageNamed:@"general_top_icon_back_normal_ios"];
    [self.view addSubview:imageView];
    
    
    btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"tableview" forState:UIControlStateNormal];
    btn.frame = CGRectMake(30, 300, 100, 30);
    [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(tableviewBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
}


- (void)tableviewBtnClick{
    
    [self.navigationController pushViewController:[TableViewViewController new] animated:YES];
}

- (void)popBtnClick{
    
    [self.navigationController dismissViewControllerAnimated:YES completion:^{
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end