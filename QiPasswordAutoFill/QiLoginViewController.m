//
//  QiLoginViewController.m
//  QiPasswordAutoFill
//
//  Created by wangyongwang on 2019/12/4.
//  Copyright © 2019 WYW. All rights reserved.
//

#import "QiLoginViewController.h"

@implementation QiLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
}

- (void)setupUI {
    
    self.title = @"登录";
    self.view.backgroundColor = [UIColor whiteColor];
    
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
    accountTextField.keyboardType = UIKeyboardTypeEmailAddress;
    accountTextField.placeholder = @"请输入用户名";
    [self.view addSubview:accountTextField];
    
    UITextField *passwordTextField = [[UITextField alloc] initWithFrame:CGRectMake(leftRightMargin, CGRectGetMaxY(accountTextField.frame) + verticalMargin, width, height)];
    passwordTextField.borderStyle = UITextBorderStyleRoundedRect;
    passwordTextField.placeholder = @"请输入密码";
    if (@available(iOS 11.0, *)) {
        passwordTextField.textContentType = UITextContentTypePassword;
    }
    passwordTextField.secureTextEntry = YES;
    [self.view addSubview:passwordTextField];
    
    UIButton *loginButton = [[UIButton alloc] initWithFrame:CGRectMake(leftRightMargin, CGRectGetMaxY(passwordTextField.frame) + verticalMargin, width, height)];
    loginButton.backgroundColor = [UIColor blackColor];
    [loginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.view addSubview:loginButton];
    [loginButton setTitle:@"登录" forState:UIControlStateNormal];
    [loginButton addTarget:self action:@selector(loginButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)loginButtonClicked:(UIButton *)sender {
    
    [self request];
}

- (void)request {
    
    [self.navigationController popViewControllerAnimated:YES];
    
//    NSURLSession *session = [NSURLSession sharedSession];
//    NSURL *url = [NSURL URLWithString:@""];
//    NSURLSessionTask *task = [session dataTaskWithURL:url
//                                   completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
//        dispatch_async(dispatch_get_main_queue(), ^{
//           [self.navigationController popViewControllerAnimated:YES];
//        });
//    }];
//
//    [task resume];
}

//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    
//    [self.view endEditing: YES];
//}

@end
