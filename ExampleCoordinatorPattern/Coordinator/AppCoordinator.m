//
//  AppCoordinator.m
//  ExampleCoordinatorPattern
//
//  Created by 김태성 on 2023/05/04.
//

#import "AppCoordinator.h"
#import "LoginCoordinator.h"
#import "MainTabBarCoordinator.h"

@interface AppCoordinator ()

@property (nonatomic, weak) LoginCoordinator *loginCoordinator;
@property (nonatomic, weak) MainTabBarCoordinator *mainTabBarCoordinator;

@end


@implementation AppCoordinator

- (void) startWithIsLogin: (BOOL) isLogin {
    if(isLogin) {
        [self startLoginCoordinator];
    } else {
        [self startMainTabBarCoordinator];
    }
}

- (void) startLoginCoordinator {
    self.loginCoordinator = [[LoginCoordinator alloc] init];
    [self.loginCoordinator start];
    [self.rootViewController presentViewController:self.loginCoordinator.rootViewController animated:true completion:^{
        
    }];
}

- (void) startMainTabBarCoordinator {
    self.mainTabBarCoordinator = [[MainTabBarCoordinator alloc] init];
    [self.mainTabBarCoordinator start];
    [self.rootViewController presentViewController:self.mainTabBarCoordinator.rootViewController animated:true completion:^{
        
    }];
}

@end
