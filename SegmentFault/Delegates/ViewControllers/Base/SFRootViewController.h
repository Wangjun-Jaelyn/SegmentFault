//
//  SFRootViewController.h
//  SegmentFault
//
//  Created by debao.com on 2016/11/16.
//  Copyright © 2016年 Debao. All rights reserved.
//

#import "UMViewController.h"

@interface SFRootViewController : UMViewController

// 先打开另一个VC（如：登陆），再打开该VC
- (void)delayOpen;
- (void)didLogout;

@end
