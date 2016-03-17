//
//  ZDLineView.m
//  UI-Quartz2d
//
//  Created by 赵志丹 on 15/10/24.
//  Copyright © 2015年 赵志丹. All rights reserved.
//

#import "ZDLineView.h"

@implementation ZDLineView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
//    test2();
//   
//    test3();
    test4();
    test5();
}


void test5(){
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(120, 120)];
    [path addLineToPoint:CGPointMake(200, 200)];
    
    [path stroke];
}

void  test4(){
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGMutablePathRef path = CGPathCreateMutable();//会有内存泄露的问题
    CGPathMoveToPoint(path, NULL, 30, 30);
    CGPathAddLineToPoint(path, NULL, 80, 80);
    
    //CGContextAddPath(ctx, path);
    
    UIBezierPath *path1 = [UIBezierPath bezierPathWithCGPath:path];
    [path1 addLineToPoint:CGPointMake(100, 30)];
    CGContextAddPath(ctx, path1.CGPath);
    
    CGContextStrokePath(ctx);
    
}



void test3(){
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(20, 20)];
    [path addLineToPoint:CGPointMake(100, 240)];
    
    CGContextAddPath(ctx, path.CGPath);
    
    CGContextStrokePath(ctx);
    
    
}

void test2(){
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathMoveToPoint(path, NULL, 50, 50);
    CGPathAddLineToPoint(path, NULL, 100, 100);
    CGContextAddPath(ctx, path);
    
    CGContextStrokePath(ctx);
}

/**
 *  C
 */
void test1(){
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextMoveToPoint(ctx, 10, 10);
    CGContextAddLineToPoint(ctx, 50, 50);
    CGContextAddLineToPoint(ctx, 90, 10);
    
    CGContextMoveToPoint(ctx, 90, 90);
    
    CGContextStrokePath(ctx);
}
 
@end
