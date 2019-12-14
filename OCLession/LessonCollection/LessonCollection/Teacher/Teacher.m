//
//  Teacher.m
//  LessonCollection
//
//  Created by lanouhn on 14-10-13.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "Teacher.h"
#import "Student.h"
@implementation Teacher
@synthesize _teaId;
@synthesize _teaCourse;
Student *stuAll;
- (void)addStu:(Student *)stu 
{
    if (_StuDic == nil) {
    _StuDic = [[NSMutableDictionary alloc] init];
    }
//    switch ([stu _name] ) {
//        case <#constant#>:
//            <#statements#>
//            break;
//            
//        default:
//            break;
//    }
    
    [_StuDic setObject:stu forKey:[stu _name]];
    
}
- (void)rollCallStu:(Student *)stu
{

}
- (void)deleterStu:(Student *)stu
{

}
- (void)showAllStu:(Student *)stu
{
    if (_StuDic) {
        _StuDic = [[NSMutableDictionary alloc] init];
        
    }
    for (NSString *stu in _StuDic) {
        NSString *stuname = [_StuDic objectForKey:stu];
        NSArray *arry = [_StuDic allKeys];
        NSLog(@"%@ =%@",arry, stuname);
    }
}
@end
