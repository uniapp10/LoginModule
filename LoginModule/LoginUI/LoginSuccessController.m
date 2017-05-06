//
//  LoginSuccessController.m
//  LoginModule
//
//  Created by zhudong on 2017/5/5.
//  Copyright © 2017年 zhudong. All rights reserved.
//

#import "LoginSuccessController.h"

@interface LoginSuccessController ()
@property (weak, nonatomic) IBOutlet UILabel *welcomeL;
@property (weak, nonatomic) IBOutlet UIImageView *iconV;

@end

@implementation LoginSuccessController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.iconV.contentMode = UIViewContentModeScaleAspectFit;
    self.iconV.frame = CGRectMake(0, 100 + ScreenSize.height, 80, 80);
    self.welcomeL.frame = CGRectMake(0, 200 + ScreenSize.height, 300, 30);
    self.welcomeL.textAlignment = NSTextAlignmentCenter;
    self.iconV.x = (ScreenSize.width - self.iconV.frame.size.width) * 0.5;
    self.welcomeL.x = (ScreenSize.width - self.welcomeL.frame.size.width) * 0.5;
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    [UIView animateWithDuration:0.5 delay:0.25 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        [UIView animateWithDuration:0.5 animations:^{
            self.iconV.y = 100;
        }];
        self.welcomeL.y = 200;
    } completion:^(BOOL finished) {
        
    }];
}

@end
