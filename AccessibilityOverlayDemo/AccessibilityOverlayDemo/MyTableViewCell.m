//
//  MyTableViewCell.m
//  AccessibilityOverlayDemo
//
//  Created by 薛锦辉 on 2018/6/28.
//  Copyright © 2018年 薛锦辉. All rights reserved.
//

#import "MyTableViewCell.h"


@interface  MyTableViewCell()

@property (nonatomic,strong)UIImageView* leftImageView;

@property (nonatomic,strong)UILabel* label1;
@property (nonatomic,strong)UILabel* label2;

@end

@implementation MyTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}



- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        self.leftImageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 100, 30)];
        self.leftImageView.image = [UIImage imageNamed:@"elearning_popup_icon_search_normal"];
        [self addSubview:self.leftImageView];
        
        self.label1 = [[UILabel alloc]initWithFrame:CGRectMake(130, 0, 100, 30)];
        self.label1.text = @"11";
        [self addSubview:self.label1];
        
        self.label2 = [[UILabel alloc]initWithFrame:CGRectMake(130, 40, 100, 30)];
        self.label2.text = @"22";
        [self addSubview:self.label2];
        
    }
    
    return self;
    
}


@end
