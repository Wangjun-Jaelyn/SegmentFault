//
//  AppDelegate.m
//  SegmentFault
//
//  Created by debao.com on 2016/11/15.
//  Copyright © 2016年 Debao. All rights reserved.
//

#import "SFAppDelegate.h"
#import "UMNavigationController.h"
#import "SFLoginService.h"

@interface SFAppDelegate ()

@end

@implementation SFAppDelegate

- (void)initURLMapping{
    [[UMNavigationController config] setValuesForKeysWithDictionary:@{@"sf://questionlist":@"SFQuestionListViewController",
                                                                       @"sf://questiondetail":@"SFQuestionDetailViewController",
                                                                       @"http://segmentfault.com":@"SFWebViewController" ,
                                                                       @"sf://webview":@"SFWebViewController",
                                                                       @"sf://login":@"SFLoginViewController"}];
}

- (void)initNavigators{
    _newestNavigator = [[UMNavigationController alloc] initWithRootViewControllerURL:[[NSURL URLWithString:@"sf://questionlist"]
                                                                                      addParams:[NSDictionary dictionaryWithObjectsAndKeys:
                                                                                                 @"最新问题", @"title",
                                                                                                 @"listnewest", @"list",
                                                                                                 nil]]];
    _newestNavigator.title = @"最新问题";
}

- (void)initSliderNavigator{
    _navigator = nil;
    if ([SFLoginService isLogin]){
    
    }else{
    
    }
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    [self initURLMapping];
    [self initNavigators];
    [self initSliderNavigator];
    
    self.window.rootViewController = _newestNavigator;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
