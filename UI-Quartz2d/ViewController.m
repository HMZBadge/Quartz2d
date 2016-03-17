//
//  ViewController.m
//  UI-Quartz2d
//
//  Created by 赵志丹 on 15/10/24.
//  Copyright © 2015年 赵志丹. All rights reserved.
//

#import "ViewController.h"
#import "ZDPieView.h"
#import "ZDBarChart.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ZDBarChart *barChart = [ZDBarChart  barChart];
    barChart.center =self.view.center;
    barChart.backgroundColor = [UIColor grayColor];
    
    barChart.barChartValues = @[ @0.5, @0.8, @0.3, @0.7, @0.2, @0.9 ];
    
    [self.view addSubview:barChart];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
