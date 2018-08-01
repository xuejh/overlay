//
//  CustomView.m
//  AccessibilityOverlayDemo
//
//  Created by 薛锦辉 on 2018/8/1.
//  Copyright © 2018年 薛锦辉. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype) init{
    
    self = [super init];
    if (self) {
        self.isAccessibilityElement = YES;
        self.accessibilityLabel = @"自定义View";
    }
    return self;
}


@end
