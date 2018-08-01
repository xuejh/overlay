//
//  CustomView1.m
//  AccessibilityOverlayDemo
//
//  Created by 薛锦辉 on 2018/8/1.
//  Copyright © 2018年 薛锦辉. All rights reserved.
//

#import "CustomView1.h"


@interface CustomView1()
{
    NSMutableArray * _AccessElements;
}
@end

@implementation CustomView1

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/



-(BOOL)isAccessibilityElement
{
    return NO;
}

-(NSArray*)getAccessElement
{
    if(_AccessElements)
    {
        return _AccessElements;
    }

    _AccessElements = [[NSMutableArray alloc] init];
    
    UIAccessibilityElement *element = [[UIAccessibilityElement alloc] initWithAccessibilityContainer:self] ;
    element.isAccessibilityElement = YES;
    element.accessibilityTraits = UIAccessibilityTraitButton;
    
    CGRect frame = CGRectMake(0, 0, 50, 50);
    element.accessibilityFrame = [self convertRect:frame toView:nil];// 转换为屏幕坐标
    element.accessibilityLabel = @"自定义View的子区域";
    [_AccessElements addObject:element];
    
    element = [[UIAccessibilityElement alloc] initWithAccessibilityContainer:self] ;
    element.isAccessibilityElement = YES;
    element.accessibilityTraits = UIAccessibilityTraitButton;
    
    frame = CGRectMake(50, 0, 50, 50);
    element.accessibilityFrame = [self convertRect:frame toView:nil];// 转换为屏幕坐标
    element.accessibilityLabel = @"2222";
    [_AccessElements addObject:element];
    
    
    return _AccessElements;
}

- (NSInteger)accessibilityElementCount
{
    return [self getAccessElement].count;
}

- (id)accessibilityElementAtIndex:(NSInteger)index
{
    return [[self getAccessElement] objectAtIndex:index];
}

//- (NSInteger)indexOfAccessibilityElement:(id)element
//{
//    return [[self getAccessElement] indexOfObject:element];
//}




@end
