//
//  WifeCell.m
//  LessonUICollectionView
//
//  Created by lanouhn on 14/11/25.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "WifeCell.h"
#import "EGOImageView.h"
@implementation WifeCell

- (EGOImageView *)phoneImage {
    if (!_phoneImage) {
        self.phoneImage = [[EGOImageView alloc] initWithFrame:self.contentView.frame];
        [self.contentView addSubview:_phoneImage];
        
    }
    return [[_phoneImage retain] autorelease];
}

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        UIToolbar *toobar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 70, 100, 30)];
        [self.contentView addSubview:toobar];
        [toobar release];
        
        self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
        [toobar addSubview:_titleLabel];
        [_titleLabel release];
    }
    return [[_titleLabel retain] autorelease];
}

- (void)dealloc {
    self.titleLabel = nil;
    [super dealloc];
}
@end
