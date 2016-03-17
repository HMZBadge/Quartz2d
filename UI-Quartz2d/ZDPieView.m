//
//  ZDPieView.m
//  UI-Quartz2d
//
//  Created by 赵志丹 on 15/10/25.
//  Copyright © 2015年 赵志丹. All rights reserved.
//

#import "ZDPieView.h"

@implementation ZDPieView


- (void)awakeFromNib{
    self.pieValues =  @[ @(0.2), @(0.3), @(0.1), @(0.4) ];
}

+ (instancetype)pieView{
    return [[NSBundle mainBundle] loadNibNamed:@"pieView" owner:nil options:nil][0];
}

- (void)drawRect:(CGRect)rect{
    //根据控件大小计算出圆的半径
    CGFloat radius = MIN(self.bounds.size.width, self.bounds.size.height) *0.5 -10;
    CGFloat start = 0.0;
    CGFloat end = 0.0;
    for (int i = 0 ; i < self.pieValues.count; i++) {
        end = 2 * M_PI * [self.pieValues[i] floatValue] + start;
        UIBezierPath *path =[UIBezierPath bezierPathWithArcCenter:self.arcCenter radius:radius startAngle:start endAngle:end clockwise:YES];
        [path addLineToPoint:self.arcCenter];
        //设置随机颜色
        [[self randomColor] set];
        [path fill];
        start = end;
    }
}

/**
 *  计算控件的中心点
 */
- (CGPoint)arcCenter{
    return CGPointMake(self.bounds.size.width * 0.5, self.bounds.size.height * 0.5);
}

- (UIColor *)randomColor{
    CGFloat r = arc4random() % 256/255.0;
    CGFloat g = arc4random() % 256/255.0;
    CGFloat b = arc4random() % 256/255.0;
    
    return [UIColor colorWithRed:r green:g blue:b alpha:1];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self setNeedsDisplay];
}
@end
