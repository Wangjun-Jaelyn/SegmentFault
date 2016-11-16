//
//  SFRootViewController.m
//  SegmentFault
//
//  Created by debao.com on 2016/11/16.
//  Copyright © 2016年 Debao. All rights reserved.
//

#import "SFLoginService.h"
#import "SFRootViewController.h"

@interface SFRootViewController ()

// 用来记录将要打开的URL
@property (nonatomic, strong)   NSURL *toOpen;

- (void)back;

@end

@implementation SFRootViewController

#pragma mark - private

- (void)back{
    [self.navigator popViewControllerAnimated:YES];
}

#pragma mark - public

//登陆回调方法
- (void)delayOpen{
    [self.navigator openURL:self.toOpen];
}

- (void)didLogout{

}

#pragma mark - parent

- (void)openedFromViewControllerWithURL:(NSURL *)aUrl{

}

- (BOOL)shouldOpenViewControllerWithURL:(NSURL *)aUrl{
    return YES;
}

#pragma mark

- (void)viewDidLoad{
    [super viewDidLoad];
//    self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor blueColor];
}

@end
