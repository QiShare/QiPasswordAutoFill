//
//  AppDelegate.m
//  QiPasswordAutoFill
//
//  Created by wangyongwang on 2019/12/4.
//  Copyright © 2019 WYW. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    if (@available(iOS 13.0, *)) {
        
    } else {
        self.window.backgroundColor = [UIColor whiteColor];
        self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
        ViewController *vc = [ViewController new];
        self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:vc];
        [self.window makeKeyAndVisible];
    }
    return YES;
}


@end
