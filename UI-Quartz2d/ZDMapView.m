//
//  ZDMapView.m
//  UI-Quartz2d
//
//  Created by 赵志丹 on 15/10/24.
//  Copyright © 2015年 赵志丹. All rights reserved.
//

#import "ZDMapView.h"

@implementation ZDMapView


- (void)drawRect:(CGRect)rect {
//    UIBezierPath *path = [UIBezierPath bezierPathWithRect:CGRectMake(10, 10, 200, 200)];
//    [[UIColor redColor] set];
//    [path setLineWidth:20];
//    [path stroke];
    
//    UIBezierPath *path2 =[UIBezierPath bezierPathWithRoundedRect:CGRectMake(20, 80, 100, 100) cornerRadius:30];
//
//    
//    [path2 stroke];
//    
    
//    //圆
//    UIBezierPath *path3 = [UIBezierPath bezierPathWithArcCenter:CGPointMake(100, 100) radius:50 startAngle:0-M_PI_2 endAngle:M_PI-M_PI_2 clockwise:YES];
//    
//    [path3 stroke];
//    
//    //圆
//    UIBezierPath *path4 = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(30, 30, 50, 50)];
//    [[UIColor purpleColor] set];
//    [path4 stroke];
//    
//    //圆
//    UIBezierPath *path5 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(40, 40, 50, 50) cornerRadius:25];
//       [path5 stroke];
    
//    UIBezierPath *path6 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(50, 50, 50, 50) byRoundingCorners:UIRectCornerAllCorners cornerRadii:CGSizeMake(10, 10)];
//    [path6 stroke];
    
//    UIBezierPath *path7 = UIBezierPath bezierPathWithRoundedRect:(CGRect) byRoundingCorners:(UIRectCorner) cornerRadii:(CGSize)
    
    
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
//    CGContextSetRGBStrokeColor(contextRef, 1.0f, 1.0f, 1.0f, 1);
    CGContextSetLineWidth(contextRef, 2.0f);
//    CGContextAddRect(contextRef, CGRectMake(50.0f, 50.0f, 200.0f, 100.0f));
//    
//    //椭圆
//    CGContextAddEllipseInRect(contextRef, CGRectMake(50.0f, 50.0f, 200.0f, 100.0f));
    CGContextMoveToPoint(contextRef, 10, 10);
    
    //画曲线
    CGContextAddCurveToPoint(contextRef, 10, 10, 300, 120, 10 , 200);
    
    CGContextAddCurveToPoint(contextRef, 10, 200, 50, 50, 100, 200);
    
    CGContextStrokePath(contextRef);
    
    
}


@end
