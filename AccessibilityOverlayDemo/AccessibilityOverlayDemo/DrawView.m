//
//  DrawView.m
//  AccessibilityOverlayDemo
//
//  Created by 薛锦辉 on 2018/8/1.
//  Copyright © 2018年 薛锦辉. All rights reserved.
//

#import "DrawView.h"

@interface DrawView()
{
    NSMutableArray * _AccessElements;
}

@end

@implementation DrawView

- (instancetype) init{
    
    self = [super init];
    if (self) {
        self.isAccessibilityElement = YES;
        self.accessibilityLabel = @"程序员";
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    [@"程序员" drawInRect:CGRectMake(0,0,100,50) withAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:20],NSForegroundColorAttributeName:[UIColor redColor]}];
    
   
}


//-(BOOL)isAccessibilityElement
//{
//    return NO;
//}
//
//-(NSArray*)getAccessElement
//{
//    if(_AccessElements)
//    {
//        return _AccessElements;
//    }
//
//    _AccessElements = [[NSMutableArray alloc] init];
//
//    UIAccessibilityElement *element = [[UIAccessibilityElement alloc] initWithAccessibilityContainer:self] ;
//    element.isAccessibilityElement = YES;
//    element.accessibilityTraits = UIAccessibilityTraitNone;
//
//    CGRect frame = CGRectMake(0, 0, 100, 50);
//    element.accessibilityFrame = [self convertRect:frame toView:nil];// 转换为屏幕坐标
//    element.accessibilityLabel = @"程序员";
//    [_AccessElements addObject:element];
//
//
//
//
//    return _AccessElements;
//}
//
//- (NSInteger)accessibilityElementCount
//{
//    return [self getAccessElement].count;
//}
//
//- (id)accessibilityElementAtIndex:(NSInteger)index
//{
//    return [[self getAccessElement] objectAtIndex:index];
//}
//
//- (NSInteger)indexOfAccessibilityElement:(id)element
//{
//    return [[self getAccessElement] indexOfObject:element];
//}

@end
