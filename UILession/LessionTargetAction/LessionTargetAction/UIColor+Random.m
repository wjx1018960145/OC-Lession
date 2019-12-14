//
//  UIColor+Random.m
//  LessionTouch
//
//  Created by lanouhn on 14/10/29.
//  Copyright (c) 2014年 王军鑫. All rights reserved.
//

#import "UIColor+Random.h"

@implementation UIColor (Random)
+ (UIColor *)random {
    
    return [self colorWithRed:arc4random()% 256 / 255.0 green:arc4random()%256/255.0 blue:arc4random()% 256/255 alpha:1.0];
    
}
@end
