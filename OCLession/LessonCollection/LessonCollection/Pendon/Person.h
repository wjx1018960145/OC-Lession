//
//  Person.h
//  LessonCollection
//
//  Created by lanouhn on 14-10-13.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString *_name;
    NSString *_gender;
    NSInteger _age;
}
@property(nonatomic, retain) NSString *_name;
@property(nonatomic, retain) NSString *_gender;
@property(nonatomic, readwrite) NSInteger _age;
@end
