//
//  SFQuestionService.h
//  SegmentFault
//
//  Created by debao.com on 2016/11/17.
//  Copyright © 2016年 Debao. All rights reserved.
//

#import "SFQuestion.h"

@interface SFQuestionService : NSObject

+ (void)getQuestionDetailById:(NSString *)qid withBlock:(SFQuestionDetailLoadedBlock)block;
+ (void)getQuestionList:(NSString *)list onPage:(NSInteger)page withBlock:(void (^)(NSArray *questions, NSError *error))block;

@end
