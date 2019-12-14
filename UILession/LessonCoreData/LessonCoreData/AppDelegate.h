//
//  AppDelegate.h
//  LessonCoreData
//
//  Created by lanouhn on 14/12/16.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
//临时数据库
@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
//被管理对象的模型
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
//持久化存储助理(codrData核心)
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
//执行数据存储操作
- (void)saveContext;
//获取documnets的路径
- (NSURL *)applicationDocumentsDirectory;


@end

