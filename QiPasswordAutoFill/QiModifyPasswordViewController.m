//
//  QiModifyPasswordViewController.m
//  QiPasswordAutoFill
//
//  Created by wangyongwang on 2019/12/4.
//  Copyright © 2019 WYW. All rights reserved.
//

#import "QiModifyPasswordViewController.h"

@interface QiModifyPasswordViewController ()

@property (nonatomic, strong) UITextField *passwordTextField;

@end

@implementation QiModifyPasswordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [_passwordTextField becomeFirstResponder];
}

- (void)setupUI {
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"修改密码";
       
    CGFloat leftRightMargin = 20.0;
    CGFloat topMargin = 100.0;
    CGFloat verticalMargin = 20.0;
    CGFloat width = CGRectGetWidth(self.view.bounds) - leftRightMargin * 2;
    CGFloat height = 40.0;
    UITextField *accountTextField = [[UITextField alloc] initWithFrame:CGRectMake(leftRightMargin, topMargin, width, height)];
    accountTextField.borderStyle = UITextBorderStyleRoundedRect;
    if (@available(iOS 11.0, *)) {
        accountTextField.textContentType = UITextContentTypeUsername;
    }
    accountTextField.keyboardType = UIKeyboardTypeNumberPad;
    accountTextField.placeholder = @"请输入手机号/邮箱";
    [self.view addSubview:accountTextField];

    UITextField *passwordTextField = [[UITextField alloc] initWithFrame:CGRectMake(leftRightMargin, CGRectGetMaxY(accountTextField.frame) + verticalMargin, width, height)];
    _passwordTextField = passwordTextField;
    passwordTextField.secureTextEntry = YES;
    passwordTextField.borderStyle = UITextBorderStyleRoundedRect;
    passwordTextField.placeholder = @"请输入密码";
    if (@available(iOS 12.0, *)) {
        passwordTextField.textContentType = UITextContentTypeNewPassword;
        passwordTextField.passwordRules = [UITextInputPasswordRules passwordRulesWithDescriptor:@"required: lower; required: upper; required: digit; required: [-]; required: [&]; required: [+]; minlength: 20;"];
    }
    [self.view addSubview:passwordTextField];

    UITextField *smsCodeTextField = [[UITextField alloc] initWithFrame:CGRectMake(leftRightMargin, CGRectGetMaxY(passwordTextField.frame) + verticalMargin, width, height)];
    smsCodeTextField.keyboardType = UIKeyboardTypeNumberPad;
    smsCodeTextField.borderStyle = UITextBorderStyleRoundedRect;
    if (@available(iOS 12.0, *)) {
        smsCodeTextField.textContentType = UITextContentTypeOneTimeCode;
    }
    smsCodeTextField.placeholder = @"请输入短信验证码";
    [self.view addSubview:smsCodeTextField];
    
    UIButton *modifyPasswordButton = [[UIButton alloc] initWithFrame:CGRectMake(leftRightMargin, CGRectGetMaxY(smsCodeTextField.frame) + verticalMargin, width, height)];
    modifyPasswordButton.backgroundColor = [UIColor blackColor];
    [modifyPasswordButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.view addSubview:modifyPasswordButton];
    [modifyPasswordButton setTitle:@"修改密码" forState:UIControlStateNormal];
    [modifyPasswordButton addTarget:self action:@selector(modifyPasswordButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [self.view endEditing: YES];
    NSLog(@"密码：%@", _passwordTextField.text);
    // &8Y-BQR5Mjs1Xto+Z3BK
}

- (void)modifyPasswordButtonClicked:(UIButton *)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}

@end
