//
//  ClassRoom.h
//  LessonCoreData
//
//  Created by lanouhn on 14/12/16.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Student;

@interface ClassRoom : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSNumber * count;
@property (nonatomic, retain) NSSet *cs;
@end

@interface ClassRoom (CoreDataGeneratedAccessors)

- (void)addCsObject:(Student *)value;
- (void)removeCsObject:(Student *)value;
- (void)addCs:(NSSet *)values;
- (void)removeCs:(NSSet *)values;

@end
