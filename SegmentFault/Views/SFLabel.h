//
//  SFLabel.h
//  SegmentFault
//
//  Created by debao.com on 2016/11/17.
//  Copyright © 2016年 Debao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SFLabel : UILabel

- (id)initWithFrame:(CGRect)frame andInsets:(UIEdgeInsets)insets;
- (id)initWithInsets:(UIEdgeInsets)insets;

@property(nonatomic)UIEdgeInsets insets;

@end
