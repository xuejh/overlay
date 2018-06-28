//
//  TableViewViewController.m
//  AccessibilityOverlayDemo
//
//  Created by 薛锦辉 on 2018/6/28.
//  Copyright © 2018年 薛锦辉. All rights reserved.
//

#import "TableViewViewController.h"

#import "MyTableViewCell.h"

@interface TableViewViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (strong, nonatomic) UITableView *myTableView;


@end

@implementation TableViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    [self createTableView];
}


- (void)createTableView{
    
    self.myTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 60, self.view.frame.size.width, 500) style:UITableViewStylePlain];
    self.myTableView.delegate = self;
    self.myTableView.dataSource = self;
    [self.view addSubview:self.myTableView];
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    
    return 30;
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 2;
}

- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    
    
    
    
    UIView * view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 30)];
    
    UILabel * label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 30)];
    label.text = @"11";
    [view addSubview:label];
    
    label = [[UILabel alloc]initWithFrame:CGRectMake(130, 0, 100, 30)];
    label.text = @"22";
    [view addSubview:label];
    
    
    if (section == 1) {
        UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake(0, 0, self.view.frame.size.width, 30);
        btn.accessibilityLabel = @"进入下一页";
        [view addSubview:btn];
    }
    
    return view;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 200;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString* cellIdentifier = [NSString stringWithFormat:@"aa"];
    MyTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[MyTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    
    return cell;
}
@end
