//
//  QiRegisterViewController.m
//  QiPasswordAutoFill
//
//  Created by wangyongwang on 2019/12/4.
//  Copyright © 2019 WYW. All rights reserved.
//

#import "QiRegisterViewController.h"

@interface QiRegisterViewController ()

@property (nonatomic, strong) UITextField *accountTextField;
@property (nonatomic, strong) UITextField *passwordTextField;

@end

@implementation QiRegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
}

- (void)setupUI {
    
    self.title = @"注册";
    self.view.backgroundColor = [UIColor whiteColor];
    
    CGFloat leftRightMargin = 20.0;
    CGFloat topMargin = 100.0;
    CGFloat verticalMargin = 20.0;
    CGFloat width = CGRectGetWidth(self.view.bounds) - leftRightMargin * 2;
    CGFloat height = 40.0;
    UITextField *accountTextField = [[UITextField alloc] initWithFrame:CGRectMake(leftRightMargin, topMargin, width, height)];
    _accountTextField = accountTextField;
    accountTextField.borderStyle = UITextBorderStyleRoundedRect;
    if (@available(iOS 11.0, *)) {
        accountTextField.textContentType = UITextContentTypeUsername;
    }
    accountTextField.keyboardType = UIKeyboardTypeEmailAddress;
    accountTextField.placeholder = @"请输入用户名";
    [self.view addSubview:accountTextField];
    
    UITextField *passwordTextField = [[UITextField alloc] initWithFrame:CGRectMake(leftRightMargin, CGRectGetMaxY(accountTextField.frame) + verticalMargin, width, height)];
    _passwordTextField = passwordTextField;
    passwordTextField.borderStyle = UITextBorderStyleRoundedRect;
    passwordTextField.placeholder = @"请输入密码";
    if (@available(iOS 12.0, *)) {
        passwordTextField.textContentType = UITextContentTypeNewPassword;
    }
    passwordTextField.secureTextEntry = YES;
    [self.view addSubview:passwordTextField];
    
    UIButton *registerButton = [[UIButton alloc] initWithFrame:CGRectMake(leftRightMargin, CGRectGetMaxY(passwordTextField.frame) + verticalMargin, width, height)];
    registerButton.backgroundColor = [UIColor blackColor];
    [registerButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.view addSubview:registerButton];
    [registerButton setTitle:@"注册" forState:UIControlStateNormal];
    [registerButton addTarget:self action:@selector(registerButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)registerButtonClicked:(UIButton *)sender {
    
    NSLog(@"手机号：%@", _accountTextField.text);
    NSLog(@"密码：%@", _passwordTextField.text);
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

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [self.view endEditing: YES];
}

- (void)readMe {
    
    UITextView *textView;
    if (@available(iOS 11.0, *)) {
        textView.textContentType = UITextContentTypeUsername;
    } 
    /*
     
     出现的问题：
     [AutoFill] Cannot show Automatic Strong Passwords for app bundleID: net.qihoo.quc.demo due to error: iCloud Keychain is disabled
     */
}

@end
