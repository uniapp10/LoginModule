//
//  LoginController.m
//  LoginModule
//
//  Created by zhudong on 2017/5/5.
//  Copyright © 2017年 zhudong. All rights reserved.
//

#import "LoginController.h"
#import "LoginSuccessController.h"

@interface LoginController ()
@property (weak, nonatomic) IBOutlet UITextField *accountTF;
@property (weak, nonatomic) IBOutlet UITextField *pwdTF;
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;

@end

@implementation LoginController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.loginBtn.layer.cornerRadius = 5;
    self.loginBtn.layer.masksToBounds = true;
    
}
- (IBAction)loginClick:(UIButton *)sender {
    NSString *account = self.accountTF.text;
    NSString *pwd = self.pwdTF.text;
    if (![account isEqualToString:@"can't say secrect"]) {
        UIAlertController *alertC = [UIAlertController alertControllerWithTitle:@"提示" message:@"你丫用户名错啦" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [self.accountTF becomeFirstResponder];
        }];
        [alertC addAction:action];
        [self presentViewController:alertC animated:true completion:nil];
    }else if (![pwd isEqualToString:@"110120"]){
        UIAlertController *alertC = [UIAlertController alertControllerWithTitle:@"提示" message:@"你丫想想密码" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [self.pwdTF becomeFirstResponder];
        }];
        [alertC addAction:action];
        [self presentViewController:alertC animated:true completion:nil];
    }else{
        LoginSuccessController *loginSC = [[LoginSuccessController alloc] init];
        self.navigationController.viewControllers = @[loginSC];
    }
}


@end
