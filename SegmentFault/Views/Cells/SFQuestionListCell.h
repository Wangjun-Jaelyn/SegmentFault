//
//  SFQuestionListCellTableViewCell.h
//  SegmentFault
//
//  Created by debao.com on 2016/11/17.
//  Copyright © 2016年 Debao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SFQuestionListCell : UITableViewCell

- (void)updateQuestionInfo:(NSDictionary *)info;

@end

@interface UITableView (SFQuestionListTableView)

- (SFQuestionListCell *)questionListCell;
- (SFQuestionListCell *)questionListLoadingCell;

@end
