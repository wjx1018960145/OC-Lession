//
//  StudentListController.m
//  LessonCoreData
//
//  Created by lanouhn on 14/12/16.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "StudentListController.h"
#import "addController.h"
#import "customCell.h"
#import "Student.h"
#import "AppDelegate.h"
@interface StudentListController ()
@property (nonatomic, strong) NSMutableArray *students;
//创建临时数据库
@property (nonatomic, strong) NSManagedObjectContext *content;

@end

@implementation StudentListController

- (NSMutableArray *)students {
    if (!_students) {
        self.students = [NSMutableArray arrayWithCapacity:1];
    }
    return _students;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
     self.navigationItem.leftBarButtonItem = self.editButtonItem;
    //创建APPdelegate对象
    AppDelegate *appdelegate = [UIApplication sharedApplication].delegate;
    //获得临时数据库
    self.content = appdelegate.managedObjectContext;
    
    //设置查询请求
    NSFetchRequest *request = [[NSFetchRequest alloc] initWithEntityName:@"Student"];
    //条件查询过滤器
    request.predicate = [NSPredicate predicateWithFormat:@"age<=300"];
    //执行查询操作
    NSArray *arr = [self.content executeFetchRequest:request error:nil];
    [self.students addObjectsFromArray:arr];
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    return self.students.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    customCell *cell = [tableView dequeueReusableCellWithIdentifier:@"wang" forIndexPath:indexPath];
    Student *stu = self.students[indexPath.row];

    cell.nameLabel.text = [NSString stringWithFormat:@"姓名: %@",stu.name];
    
    cell.genderLabel.text = [NSString stringWithFormat:@"性别: %@",stu.gender];
    
    
    return cell;
}



// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}



// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
       
        Student *stu = [self.students objectAtIndex:indexPath.row];
        //删除数据库中的学生对象
        [self.content deleteObject:stu];
        [self.content save:nil];
        //删除数组里的元素
        [self.students removeObject:stu];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([segue.destinationViewController isKindOfClass:[addController class]]){
        addController *addvc = segue.destinationViewController;
        [addvc getInfoFromOutInterface:^(Student *stu) {
            [self.students addObject:stu];
            [self.tableView reloadData];
        }];
    }
    
    NSLog(@"123");
    NSLog(@"%@",segue.destinationViewController);
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
