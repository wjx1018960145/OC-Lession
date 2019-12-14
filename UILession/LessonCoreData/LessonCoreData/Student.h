//
//  Student.h
//  LessonCoreData
//
//  Created by lanouhn on 14/12/16.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class ClassRoom;

@interface Student : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSNumber * age;
@property (nonatomic, retain) NSString * gender;
@property (nonatomic, retain) NSString * num;
@property (nonatomic, retain) NSString * major;
@property (nonatomic, retain) ClassRoom *sc;

@end
