//
//  ZDBarChart.m
//  UI-Quartz2d
//
//  Created by 赵志丹 on 15/10/25.
//  Copyright © 2015年 赵志丹. All rights reserved.
//

#import "ZDBarChart.h"

@implementation ZDBarChart

+ (instancetype)barChart{
    return [[NSBundle mainBundle] loadNibNamed:@"ZDBarChart" owner:nil options:nil][0]
    ;
}


- (void)drawRect:(CGRect)rect{
    
//    self.barChartValues[0];
    //先画一个矩形 然后循环
    for (int i = 0 ; i < self.barChartValues.count; i++) {
        
        CGFloat margain =10;
        CGFloat width =30;
        CGFloat height =self.bounds.size.height * [self.barChartValues[i] floatValue];
        
        CGFloat x = margain + i * (margain + width);
        CGFloat y = self.bounds.size.height - height;
        UIBezierPath *path = [UIBezierPath bezierPathWithRect:CGRectMake(x, y, width, height)];
        
        [[self randomColor] set];
        [path fill];
        
    }
    
    //CGContextRef contextRef = UIGraphicsGetCurrentContext();
    //CGContextRotateCTM(<#CGContextRef  _Nullable c#>, <#CGFloat angle#>)
    //CGContextTranslateCTM(<#CGContextRef  _Nullable c#>, <#CGFloat tx#>, <#CGFloat ty#>)
    
    //Scale the current graphics state's transformation matrix (the CTM) by

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
