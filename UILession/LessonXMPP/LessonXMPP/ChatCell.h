//
//  ChatCell.h
//  LessonXMPP
//
//  Created by lanouhn on 14/12/18.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChatCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *fromuserLab;
@property (weak, nonatomic) IBOutlet UILabel *touserLab;
@property (weak, nonatomic) IBOutlet UILabel *messageLab;

@end
