//
//  SFQuestionService.m
//  SegmentFault
//
//  Created by debao.com on 2016/11/17.
//  Copyright © 2016年 Debao. All rights reserved.
//

#import "SFQuestionService.h"

@implementation SFQuestionService

+ (void)getQuestionList:(NSString *)list onPage:(NSInteger)page
              withBlock:(SFQuestionListLoadedBlock)block
{
    [SFQuestion questionListByPath:[NSString stringWithFormat:@"api/question?do=%@", list]
                            onPage:page
                              size:30
                         withBlock:block];
}

+ (void)getQuestionDetailById:(NSString *)qid
                    withBlock:(SFQuestionDetailLoadedBlock)block
{
    [SFQuestion questionDetailBy:qid withBlock:block];
}

@end
