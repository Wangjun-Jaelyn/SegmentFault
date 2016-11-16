//
//  SFLoginService.m
//  SegmentFault
//
//  Created by debao.com on 2016/11/16.
//  Copyright © 2016年 Debao. All rights reserved.
//

#import "SFLoginService.h"

@implementation SFLoginService

+ (BOOL)isLogin{
    if ([[[NSUserDefaults standardUserDefaults] valueForKey:@"sfsess"] length]
        && [[[NSUserDefaults standardUserDefaults] valueForKey:@"sfuid"] length]) {
        return YES;
    }else{
        [SFLoginService logout];
        return NO;
    }
}

+ (BOOL)loginWithInfo:(NSDictionary *)info{
    BOOL statusCookie = NO;
    BOOL statusUID = NO;
    if (info&&0<[info[@"sfsess"] length]) {
        [[NSUserDefaults standardUserDefaults] setValue:info[@"sfsess"] forKey:@"sfsess"];
        statusCookie = YES;
    }
    if (info&&0<[info[@"sfuid"] length]){
        [[NSUserDefaults standardUserDefaults] setValue:info[@"sfuid"] forKey:@"sfuid"];
        statusUID = YES;
    }
    [[NSUserDefaults standardUserDefaults] synchronize];
    return statusUID&&statusCookie;
}

+ (void)logout{
    [[NSUserDefaults standardUserDefaults] setValue:@"" forKey:@"sfsess"];
    [[NSUserDefaults standardUserDefaults] setValue:@"" forKey:@"sfuid"];
    NSHTTPCookie *cookie = [NSHTTPCookie cookieWithProperties:@{
                                                                NSHTTPCookieName:@"sfsess",
                                                                NSHTTPCookieValue:@"",
                                                                NSHTTPCookieDomain:@".segmentfault.com",
                                                                NSHTTPCookieOriginURL:@"segmentfault.com",
                                                                NSHTTPCookiePath:@"/",
                                                                NSHTTPCookieVersion:@"0"}];
    [[NSHTTPCookieStorage sharedHTTPCookieStorage] setCookie:cookie];
    NSHTTPCookie *uidCookie = [NSHTTPCookie cookieWithProperties:@{
                                                                   NSHTTPCookieName:@"sfuid",
                                                                   NSHTTPCookieValue:@"",
                                                                   NSHTTPCookieDomain:@".segmentfault.com",
                                                                   NSHTTPCookieOriginURL:@"segmentfault.com",
                                                                   NSHTTPCookiePath:@"/",
                                                                   NSHTTPCookieVersion:@"0"}];
    [[NSHTTPCookieStorage sharedHTTPCookieStorage] setCookie:uidCookie];
    [[NSNotificationCenter defaultCenter] postNotificationName:SFNotificationLogout object:nil];
}

@end
