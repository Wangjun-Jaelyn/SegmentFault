//
//  SFTools.m
//  SegmentFault
//
//  Created by debao.com on 2016/11/16.
//  Copyright © 2016年 Debao. All rights reserved.
//

#import "SFTools.h"

@implementation SFTools

+ (NSString *)contentForFile:(NSString *)file ofType:(NSString *)type{
    NSString *filePath = [[NSBundle mainBundle] pathForResource:file ofType:type];
    NSString *content = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
    return content;
}

+ (SFAppDelegate *)applicationDelegate{
    return (SFAppDelegate *)[[UIApplication sharedApplication] delegate];
}

+ (float)heightOfString:(NSString *)string withWidth:(float)width font:(UIFont *)font{
    if ([NSNull null] == (id)string){
        string = @"暂时没有数据";
    }
    CGSize constraintSize = CGSizeMake(width, MAXFLOAT);
    NSDictionary *attrDic = @{NSFontAttributeName:[UIFont systemFontOfSize:20]};
    CGSize labelSize = [string boundingRectWithSize:constraintSize options:NSStringDrawingTruncatesLastVisibleLine attributes:attrDic context:nil].size;
    return labelSize.height;
}

@end
