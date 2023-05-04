//
//  AppCoordinator.h
//  ExampleCoordinatorPattern
//
//  Created by 김태성 on 2023/05/04.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface AppCoordinator : NSObject

@property (nonatomic, weak) UINavigationController *rootViewController;

- (void) startWithIsLogin: (BOOL) isLogin;

@end
