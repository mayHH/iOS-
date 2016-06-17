//
//  MYTabbarViewController.m
//  iOS_项目
//
//  Created by ma c on 16/6/16.
//  Copyright © 2016年 May. All rights reserved.
//

#import "MYTabbarViewController.h"
#import "MYNavigationController.h"
@interface MYTabbarViewController ()
//标签栏的4个视图控制器
@property (strong,nonatomic)NSArray *viewControllersArray;

@end

@implementation MYTabbarViewController

- (NSArray *)viewControllersArray
{
    if (!_viewControllersArray) {
        _viewControllersArray = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"viewController" ofType:@"plist"]];

    }
    return _viewControllersArray;
}
- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    NSMutableArray *muArrayVC = [[NSMutableArray alloc] initWithCapacity:self.viewControllersArray.count];
    //数组遍历
    [self.viewControllersArray enumerateObjectsUsingBlock:^(NSDictionary *  _Nonnull dic, NSUInteger idx, BOOL * _Nonnull stop) {

        Class viewControllerClass = NSClassFromString(dic[@"viewController"]);
      
        UIViewController *viewcontroller = [[viewControllerClass alloc] init];
        viewcontroller.title = dic[@"Title"];
        
        viewcontroller.tabBarItem.image = [[UIImage imageNamed:dic[@"normalImage"]]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        
        viewcontroller.tabBarItem.selectedImage = [[UIImage imageNamed:dic[@"selectedImage"]]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal
        ];

        MYNavigationController *navgaton = [[MYNavigationController alloc] initWithRootViewController:viewcontroller];
        [muArrayVC addObject:navgaton];
        
    }];
    
    [[UITabBarItem appearance]setTitleTextAttributes:@{
                                                      NSFontAttributeName:[UIFont systemFontOfSize:10.0],NSForegroundColorAttributeName:[UIColor grayColor]
                                                      }forState:UIControlStateNormal];
    [[UITabBarItem appearance]setTitleTextAttributes:@{
                                                       NSFontAttributeName:[UIFont systemFontOfSize:10.0],NSForegroundColorAttributeName:[UIColor colorWithRed:65.0/255.0 green:170.0/255.0 blue:241.0/255.0 alpha:1]
                                                      }forState:UIControlStateSelected];

    self.viewControllers = muArrayVC;
    self.selectedIndex = 0;
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
