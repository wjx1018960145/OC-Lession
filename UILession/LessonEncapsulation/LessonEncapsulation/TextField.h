//
//  TextField.h
//  LessonEncapsulation
//
//  Created by lanouhn on 14/10/27.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol textFieldDelegate <NSObject>

- (void)setTextFieldDelegate:(id<UITextFieldDelegate>)delegate;

@end
