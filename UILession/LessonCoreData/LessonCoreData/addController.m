//
//  addController.m
//  LessonCoreData
//
//  Created by lanouhn on 14/12/16.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "addController.h"
#import "Student.h"
#import "ClassRoom.h"
#import "AppDelegate.h"
@interface addController ()
@property (weak, nonatomic) IBOutlet UITextField *textName;
@property (weak, nonatomic) IBOutlet UITextField *textAge;
@property (weak, nonatomic) IBOutlet UITextField *textGender;
@property (weak, nonatomic) IBOutlet UITextField *textNum;
@property (weak, nonatomic) IBOutlet UITextField *textMajor;
@property (weak, nonatomic) IBOutlet UITextField *ClassRoom;

//创建临时数据库
@property (nonatomic, strong) NSManagedObjectContext *context;
@end

@implementation addController

- (void)viewDidLoad {
    [super viewDidLoad];
    AppDelegate *dalegate = [UIApplication sharedApplication].delegate;
    self.context  = dalegate.managedObjectContext;
   
}
- (void)getInfoFromOutInterface:(getStudentInfo)info {
    self.info = info;
}
- (void)viewWillDisappear:(BOOL)animated {
    //创建学生对象
    Student *stu = [NSEntityDescription insertNewObjectForEntityForName:@"Student" inManagedObjectContext:self.context];
    stu.name = self.textName.text;
    stu.age = @([self.textAge.text integerValue]);
    stu.gender = self.textGender.text;
    stu.major = self.textMajor.text;
    stu.num = self.textNum.text;
    stu.sc = [NSEntityDescription insertNewObjectForEntityForName:@"ClassRoom" inManagedObjectContext:self.context];
    stu.sc.name = self.ClassRoom.text;
    [self.context save:nil];
    if (self.info) {
        self.info(stu);
    }
    
   /*
    NSManagedObjectModel *managedObjectModel =
    [[context persistentStoreCoordinator] managedObjectModel];
    NSEntityDescription *entity =
    [[managedObjectModel entitiesByName] objectForKey:entityName];
    
    NSManagedObject *newObject = [[NSManagedObject alloc]
                                  initWithEntity:entity insertIntoManagedObjectContext:context];
    return newObject;
    */
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
