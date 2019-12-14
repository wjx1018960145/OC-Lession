//
//  DB.m
//  LessonNSArry
//
//  Created by lanouhn on 14/11/9.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "DB.h"

@implementation DB
-(void)createEditableCopyOfDatabaseIfNeeded
{
    // 先判断 sandbox 下面的 documents 子文件夹里面有没有数据库文件 test.sqlite
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSError *error;
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *writableDBPath = [documentsDirectory stringByAppendingPathComponent:@"test.sqlite"];
    BOOL ifFind = [fileManager fileExistsAtPath:writableDBPath];
    if (ifFind)
    {  
        // NSLog(@"数据库已存在");
        return;
    }
    else{
        NSLog(@"数据库不存在,需要复制");
    }
    // 如果不存在数据库文件，则复制数据库文件
    NSString *defaultDBPath = [[NSBundle mainBundle] pathForResource:@"test" ofType:@"sqlite"];
    BOOL ifSuccess = [fileManager copyItemAtPath:defaultDBPath toPath:writableDBPath error:&error];
    if (!ifSuccess) {
        NSLog(@"Failed to create writable database file with message '%@'.", [error localizedDescription]);
    }else {
        NSLog(@"createEditableCopyOfDatabaseIfNeeded 初始化成功");
    }
    return;
    
}

@end
