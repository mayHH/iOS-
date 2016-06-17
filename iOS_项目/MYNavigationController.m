//
//  MYNavigationController.m
//  iOS_项目
//
//  Created by ma c on 16/6/16.
//  Copyright © 2016年 May. All rights reserved.
//

#import "MYNavigationController.h"

@interface MYNavigationController ()

@end

@implementation MYNavigationController

+ (void)initialize
{
    //导航栏
    UINavigationBar *navigationBar = [UINavigationBar appearance];
    [navigationBar setBackgroundImage:[UIImage imageNamed:@"nav_backImage"] forBarMetrics:UIBarMetricsDefault];
    [navigationBar setTitleTextAttributes:@{
                                            NSForegroundColorAttributeName:RGB(20, 24, 56),
                                            NSFontAttributeName:[UIFont systemFontOfSize:17.0]
                                            }];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
