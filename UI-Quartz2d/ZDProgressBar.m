//
//  ZDProgressBar.m
//  UI-Quartz2d
//
//  Created by 赵志丹 on 15/10/25.
//  Copyright © 2015年 赵志丹. All rights reserved.
//

#import "ZDProgressBar.h"

@interface ZDProgressBar ()
@property (weak, nonatomic) IBOutlet UISlider *progressBar;

@property (weak, nonatomic) IBOutlet UILabel *progressLabel;
@property (nonatomic,strong) NSTimer *timer;

@end
@implementation ZDProgressBar

- (void)awakeFromNib{
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(changeValue) userInfo:nil repeats:YES];
    [self.timer fire];
    
}

- (void)changeValue{
    if (self.progressBar.value < 1) {
        self.progressBar.value+=0.001;
    }else{
        self.progressBar.value = 0;
    }
    [self progressChange:self.progressBar];
    
}

- (IBAction)progressChange:(UISlider *)sender {
    [self setNeedsDisplay];
    self.progressLabel.text = [NSString stringWithFormat:@"%.2f%%",self.progressBar.value*100];
}

- (void)drawRect:(CGRect)rect{
    
    CGFloat radius = MIN(self.bounds.size.width, self.bounds.size.height) * 0.5 -10;
    //画个扇形
    UIBezierPath *path =  [UIBezierPath bezierPathWithArcCenter:self.arcCenter radius:radius startAngle:0-M_PI_2 endAngle:2*M_PI*self.progressBar.value-M_PI_2 clockwise:YES];
    [path addLineToPoint:self.arcCenter];
    [[UIColor redColor] set];
    [path fill];
}

- (CGPoint)arcCenter{
    return CGPointMake(self.bounds.size.width*0.5, self.bounds.size.height*0.5 -10);
}
+ (instancetype)progressBar{
    return [[NSBundle mainBundle] loadNibNamed:@"ZDProgressBar" owner:nil options:nil][0];
}

@end
