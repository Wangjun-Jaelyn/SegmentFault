//
//  SFAppDelegate.h
//  SegmentFault
//
//  Created by debao.com on 2016/11/15.
//  Copyright © 2016年 Debao. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SFSlideNavViewController;
@class UMNavigationController;

@interface SFAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic)   SFSlideNavViewController          *navigator;

@property (strong, nonatomic)   UMNavigationController            *followedQuestionsNavigator;
@property (strong, nonatomic)   UMNavigationController            *hottestNavigator;
@property (strong, nonatomic)   UMNavigationController            *loginNavigator;
@property (strong, nonatomic)   UMNavigationController            *logoutNavigator;
@property (strong, nonatomic)   UMNavigationController            *newestNavigator;
@property (strong, nonatomic)   UMNavigationController            *userProfileNavigator;
@property (strong, nonatomic)   UMNavigationController            *userSettingsNavigator;


@end

