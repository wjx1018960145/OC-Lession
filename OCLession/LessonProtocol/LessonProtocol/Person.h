//
//  Person.h
//  LessonProtocol
//
//  Created by lanouhn on 14-10-18.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AssistantProtocol.h"
/**
 *  person 想做助理 必须服从助理协议
 
 */
@interface Person : NSObject <AssistantProtocol>

@end
