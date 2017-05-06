//
//  ZDTabBarController.m
//  LoginModule
//
//  Created by zhudong on 2017/5/5.
//  Copyright © 2017年 zhudong. All rights reserved.
//

#import "ZDTabBarController.h"
#import "LoginController.h"

@interface ZDTabBarController ()

@end

@implementation ZDTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:[[LoginController alloc] init]];
    ;
    UITabBarItem *tabBarItem = [[UITabBarItem alloc] initWithTitle:@"登录" image: [[UIImage imageNamed:@"send"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]selectedImage:[[UIImage imageNamed:@"sending"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    nav.tabBarItem = tabBarItem;
    [self addChildViewController:nav];
}

@end
