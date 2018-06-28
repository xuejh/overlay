//
//  CustomViewController.m
//  AccessibilityOverlayDemo
//
//  Created by 薛锦辉 on 2018/6/28.
//  Copyright © 2018年 薛锦辉. All rights reserved.
//

#import "CustomViewController.h"

@interface CustomViewController ()

@end

@implementation CustomViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    [self setNavigationLeftBtn];
    [self setSearchBtn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)setNavigationLeftBtn
{
    //
    //    UIImage *img = [MYStudyThemeManager getThemeImageWithName:@"general_top_icon_back_normal"];
    //if(img)
    // {
    UIButton *navBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 60, 30, 30)];
    //        registerThemeMgr(navBtn);
    //        [navBtn initNormalBackgroundImage:@"general_top_icon_back_normal"];
    [navBtn setImage:[UIImage imageNamed:@"general_top_icon_back_normal_ios"] forState:UIControlStateNormal];
    [navBtn setImage:[UIImage imageNamed:@"general_top_icon_back_pressed_ios"] forState:UIControlStateHighlighted];
    
    [navBtn addTarget:self action:@selector(navigationLeftBtn_Click) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *barBtn = [[UIBarButtonItem alloc] initWithCustomView:navBtn];
    self.navigationItem.leftBarButtonItem = barBtn;
    
    navBtn.accessibilityLabel = @"返回";
    
    //}
}

- (void)setSearchBtn{
    
    UIButton *searchBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 100, 30, 30)];
    [searchBtn setImage:[UIImage imageNamed:@"elearning_popup_icon_search_normal"] forState:UIControlStateNormal];
    [searchBtn setImage:[UIImage imageNamed:@"elearning_popup_icon_search_normal"] forState:UIControlStateHighlighted];
    searchBtn.accessibilityLabel = @"搜索";
    [self.view addSubview:searchBtn];
}

- (void)navigationLeftBtn_Click{
    
    [self.navigationController dismissViewControllerAnimated:YES completion:^{
        
    }];
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
