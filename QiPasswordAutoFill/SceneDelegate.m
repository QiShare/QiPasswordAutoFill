#import "SceneDelegate.h"
#import "ViewController.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions  API_AVAILABLE(ios(13.0)){
    
    if (@available(iOS 13.0, *)) {
        
        // UIWindowScene *windowScene = [[UIWindowScene alloc] initWithSession:session connectionOptions:connectionOptions];
        
        self.window = [[UIWindow alloc] initWithWindowScene:(UIWindowScene *)scene];
        self.window.backgroundColor = [UIColor whiteColor];
        ViewController *vc = [ViewController new];
        self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:vc];
        [self.window makeKeyAndVisible];
    }
}

@end
