//
//  SFQuestionListViewController.m
//  SegmentFault
//
//  Created by debao.com on 2016/11/16.
//  Copyright © 2016年 Debao. All rights reserved.
//

#import "SFQuestionListViewController.h"
#import "SRRefreshView.h"
#import "SFTools.h"

@interface SFQuestionListViewController ()
<UITableViewDataSource, UITableViewDelegate, SRRefreshDelegate>

- (void)appendQuestions:(NSArray *)questions;
- (void)didLogout;

@property (assign, nonatomic)   BOOL                hasMore;
@property (assign, nonatomic)   BOOL                loading;
@property (strong, nonatomic)   NSString            *list;
@property (assign, nonatomic)   NSInteger           page;
@property (strong, nonatomic)   UITableView         *tableView;
@property (strong, nonatomic)   SRRefreshView       *slimeView;

@end

@implementation SFQuestionListViewController
#pragma mark - private

//把问题接在后面
- (void)appendQuestions:(NSArray *)questions{
    _hasMore = YES;
    if (nil != questions){
        if (30>[questions count]){
            _hasMore = NO;
        }
        if (nil == _questionList) {
            _questionList = [questions mutableCopy];
        }else{
            [_questionList addObjectsFromArray:questions];
        }
    }
    self.loading = NO;
    [self.tableView reloadData];
}

- (void)didLogout{
    [_questionList removeAllObjects];
    [_tableView reloadData];
    [self.navigator popViewControllerAnimated:NO];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.hasMore && 0 < [_questionList count] ? [_questionList count]+1 : [_questionList count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row < [_questionList count]){
        CGFloat height = [SFTools heightOfString:_questionList[indexPath.row][@"title"] withWidth:292.0f font:QUESTION_TITLE_LABEL_FONT];
        return height + 47.0f;
    }else{
        return 60.0f;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

}

#pragma mark - UIScrollViewDelegate

#pragma mark - slimeRefresh delegate

#pragma mark

- (void)viewDidLoad {
    [super viewDidLoad];
    self.list = [[self.params allKeys] containsObject:@"list"] ? self.params[@"list"] : @"listnewest";

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
