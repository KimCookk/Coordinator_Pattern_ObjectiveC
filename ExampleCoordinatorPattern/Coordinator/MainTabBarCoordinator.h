//
//  MainTabBarCoordinator.h
//  ExampleCoordinatorPattern
//
//  Created by 김태성 on 2023/05/04.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface MainTabBarCoordinator : NSObject
    @property (nonatomic, weak) UITabBarController *rootViewController;

- (void) start;
@end
