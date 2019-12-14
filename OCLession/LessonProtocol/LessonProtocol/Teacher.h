//
//  Teacher.h
//  LessonProtocol
//
//  Created by lanouhn on 14-10-18.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AssistantProtocol.h"
//teacher 想要做助理 该类要服从协议
@interface Teacher : NSObject <AssistantProtocol>


@end
