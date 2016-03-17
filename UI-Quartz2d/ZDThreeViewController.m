//
//  ZDThreeViewController.m
//  UI-Quartz2d
//
//  Created by 赵志丹 on 15/10/25.
//  Copyright © 2015年 赵志丹. All rights reserved.
//

#import "ZDThreeViewController.h"
#import "ZDProgressBar.h"

@interface ZDThreeViewController ()

@end

@implementation ZDThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    ZDProgressBar *progressBar = [ZDProgressBar progressBar];
    progressBar.center =self.view.center;
    
    [self.view addSubview:progressBar];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
