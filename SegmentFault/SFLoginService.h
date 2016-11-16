//
//  SFLoginService.h
//  SegmentFault
//
//  Created by debao.com on 2016/11/16.
//  Copyright © 2016年 Debao. All rights reserved.
//

@class UMViewController;

@interface SFLoginService : NSObject

+ (BOOL)isLogin;
+ (void)logout;
+ (BOOL)loginWithInfo:(NSDictionary *)info;
+ (void)login:(UMViewController *)vc withCallback:(NSString *)callback;

@end
