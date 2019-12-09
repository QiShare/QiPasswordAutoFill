//
//  ViewController.m
//  QiPasswordAutoFill
//
//  Created by wangyongwang on 2019/12/4.
//  Copyright © 2019 WYW. All rights reserved.
//

#import "ViewController.h"
#import "QiLoginViewController.h"
#import "QiRegisterViewController.h"
#import "QiModifyPasswordViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
}

- (void)setupUI {
    
    self.title = @"Password Autofill";
    self.view.backgroundColor = [UIColor whiteColor];
    
    CGFloat leftRightMargin = 20.0;
    CGFloat topMargin = 100.0;
    CGFloat verticalMargin = 20.0;
    CGFloat width = CGRectGetWidth(self.view.bounds) - leftRightMargin * 2;
    CGFloat height = 44.0;
    
    UIButton *registerButton = [[UIButton alloc] initWithFrame:CGRectMake(leftRightMargin, topMargin, width, height)];
    registerButton.backgroundColor = [UIColor blackColor];
    [registerButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.view addSubview:registerButton];
    [registerButton setTitle:@"注册" forState:UIControlStateNormal];
    [registerButton addTarget:self action:@selector(registerButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *loginButton = [[UIButton alloc] initWithFrame:CGRectMake(leftRightMargin, CGRectGetMaxY(registerButton.frame) + verticalMargin, width, height)];
    loginButton.backgroundColor = [UIColor blackColor];
    [loginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.view addSubview:loginButton];
    [loginButton setTitle:@"登录" forState:UIControlStateNormal];
    [loginButton addTarget:self action:@selector(loginButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *modifyPasswordButton = [[UIButton alloc] initWithFrame:CGRectMake(leftRightMargin, CGRectGetMaxY(loginButton.frame) + verticalMargin, width, height)];
   modifyPasswordButton.backgroundColor = [UIColor blackColor];
   [modifyPasswordButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
   [self.view addSubview:modifyPasswordButton];
   [modifyPasswordButton setTitle:@"修改密码" forState:UIControlStateNormal];
   [modifyPasswordButton addTarget:self action:@selector(modifyPasswordButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)registerButtonClicked:(UIButton *)sender {
    
    [self gotoRegisterViewController];
}


- (void)loginButtonClicked:(UIButton *)sender {
    
    [self gotoLoginViewController];
}

- (void)modifyPasswordButtonClicked:(id)sender {
    
    [self gotoModifyPasswordViewController];
}

- (void)gotoLoginViewController {
    
    QiLoginViewController *loginVC = [QiLoginViewController new];
    [self.navigationController pushViewController:loginVC animated:YES];
}

- (void)gotoRegisterViewController {
    
    QiRegisterViewController *registerVC = [QiRegisterViewController new];
    [self.navigationController pushViewController:registerVC animated:YES];
}

- (void)gotoModifyPasswordViewController {
    
    QiModifyPasswordViewController *modifyPasswordVC = [QiModifyPasswordViewController new];
    [self.navigationController pushViewController:modifyPasswordVC animated:YES];
}


@end
