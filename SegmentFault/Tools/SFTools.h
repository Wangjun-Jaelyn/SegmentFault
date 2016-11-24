//
//  SFTools.h
//  SegmentFault
//
//  Created by debao.com on 2016/11/16.
//  Copyright © 2016年 Debao. All rights reserved.
//

@class SFAppDelegate;

@interface SFTools : NSObject

+ (NSString *)contentForFile:(NSString *)file ofType:(NSString *)type;
+ (SFAppDelegate *)applicationDelegate;

+ (float)heightOfString:(NSString *)string withWidth:(float)width font:(UIFont *)font;

@end
