//
//  ZDPieView.h
//  UI-Quartz2d
//
//  Created by 赵志丹 on 15/10/25.
//  Copyright © 2015年 赵志丹. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZDPieView : UIView
@property (nonatomic,strong)  NSArray *pieValues;

+ (instancetype)pieView;
@end
