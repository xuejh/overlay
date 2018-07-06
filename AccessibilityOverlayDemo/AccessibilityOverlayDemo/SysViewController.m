//
//  SysViewController.m
//  AccessibilityOverlayDemo
//
//  Created by 薛锦辉 on 2018/6/28.
//  Copyright © 2018年 薛锦辉. All rights reserved.
//

#import "SysViewController.h"
#import "TableViewViewController.h"

@interface SysViewController ()<UISearchBarDelegate>

@property (nonatomic,strong)UILabel * mlabel;
@property (nonatomic,strong)UIButton * mbutton;

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
    self.mbutton = btn;
    
    UILabel * label = [[UILabel alloc]initWithFrame:CGRectMake(30, 100, 100, 30)];
    label.text = @"dfdl 我";
    [self.view addSubview:label];
    self.mlabel = label;
    
    UIImageView * imageView = [[UIImageView alloc]initWithFrame:CGRectMake(30, 150, 100, 100)];
    imageView.image = [UIImage imageNamed:@"general_top_icon_back_normal_ios"];
    [self.view addSubview:imageView];
    
    
    btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"tableview" forState:UIControlStateNormal];
    btn.frame = CGRectMake(30, 300, 100, 30);
    [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(tableviewBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
    btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"tableview" forState:UIControlStateNormal];
    btn.frame = CGRectMake(30, 300, 100, 30);
    [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(tableviewBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    UISearchBar * bar = [[UISearchBar alloc]initWithFrame:CGRectMake(30, 350, 200, 30)];
    bar.placeholder = @"搜索";
    [self.view addSubview:bar];
    bar.delegate = self;
    
}


- (void)searchBarTextDidEndEditing:(UISearchBar *)searchBar {
    
}



- (void)tableviewBtnClick{
    
    [self.navigationController pushViewController:[TableViewViewController new] animated:YES];
}

- (void)popBtnClick{
    
    [self.navigationController dismissViewControllerAnimated:YES completion:^{
        
    }];
}


- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar{
    
    [searchBar resignFirstResponder];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, self.mlabel);
        
        
    });
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
