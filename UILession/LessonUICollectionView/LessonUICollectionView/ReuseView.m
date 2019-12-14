//
//  ReuseView.m
//  ScrollView
//
//  Created by 张浩 on 14/11/13.
//  Copyright (c) 2014年 jiangxiaofei. All rights reserved.
//

#import "ReuseView.h"


@interface ReuseView ()<UIScrollViewDelegate>
@property (nonatomic, retain) UIScrollView *scrollView;
@property (nonatomic, retain) UIPageControl *pageControl;
@property (nonatomic, retain) UIImageView *imageView;
@end

@implementation ReuseView

- (id)initWithFrame:(CGRect)frame array:(NSArray *)array
{
    self = [super initWithFrame:frame];
    if (self) {
       [NSTimer scheduledTimerWithTimeInterval:1.5 target:self selector:@selector(runTimer) userInfo:nil repeats:YES];
        
        self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
        _scrollView.contentSize = CGSizeMake(frame.size.width * array.count, frame.size.height);
        _scrollView.tag = 100;
        _scrollView.backgroundColor = [UIColor whiteColor];
        _scrollView.showsHorizontalScrollIndicator = NO;
        _scrollView.showsVerticalScrollIndicator = NO;
        _scrollView.delegate = self;
        _scrollView.pagingEnabled = YES;
        _scrollView.contentOffset = CGPointMake(frame.size.width, 0);
        
        [self addSubview:_scrollView];
        [_scrollView release];
        
        for (int i = 0; i < array.count; i++) {
            UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(frame.size.width * i, 0, frame.size.width, frame.size.height)];
            imageView.image = [UIImage imageNamed:array[i]];
            UITapGestureRecognizer *tapgesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handTapAction:)];
            [imageView addGestureRecognizer:tapgesture];
            imageView.userInteractionEnabled = YES;
            [_scrollView addSubview:imageView];
            [imageView release];
            [tapgesture release];
        }
        
        self.pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(_scrollView.frame.size.width / 3, _scrollView.frame.size.height - 20, _scrollView.frame.size.width, 15)];
        _pageControl.tag = 110;
        _pageControl.currentPage = 0;
        _pageControl.numberOfPages = array.count - 2;
        _pageControl.pageIndicatorTintColor = [UIColor redColor];
        //设置表示的当前页点的颜色
        _pageControl.currentPageIndicatorTintColor = [UIColor blueColor];
        [_pageControl addTarget:self action:@selector(handlePageControl:) forControlEvents:UIControlEventValueChanged];
        [self addSubview:_pageControl];
        [_pageControl release];
    }
    return self;
}

#pragma mark - action
- (void)handlePageControl:(UIPageControl *)pageControl {
    //1.先获取scrollView
    UIScrollView *scrollView = (UIScrollView *)[self viewWithTag:100];
    //2.修改scrollView的偏移量
    [scrollView setContentOffset:CGPointMake(_scrollView.frame.size.width * pageControl.currentPage, 0) animated:YES];
}
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    //1.先获取pageControl
    _pageControl = (UIPageControl *)[self viewWithTag:110];
    //2.修改pageContorl的currentPage与scrollView保持一致
    _pageControl.currentPage = scrollView.contentOffset.x / _scrollView.frame.size.width - 1;
    if (scrollView.contentOffset.x < _scrollView.frame.size.width) {
        [scrollView setContentOffset:CGPointMake(_scrollView.frame.size.width * (_scrollView.subviews.count - 2), 0)];
        _pageControl.currentPage = _scrollView.subviews.count - 3;
    }
    if (scrollView.contentOffset.x > _scrollView.frame.size.width * (_scrollView.subviews.count - 2)) {
        [scrollView setContentOffset:CGPointMake(_scrollView.frame.size.width, 0)];
        _pageControl.currentPage = 0;
    }
    
}
- (void)runTimer {
    CGFloat x = _scrollView.contentOffset.x;
    [_scrollView setContentOffset:CGPointMake(x + _scrollView.frame.size.width, 0) animated:NO];
    _pageControl.currentPage = _scrollView.contentOffset.x / _scrollView.frame.size.width - 1;
    if (x > _scrollView.frame.size.width *(_scrollView.subviews.count - 3)) {
        [_scrollView setContentOffset:CGPointMake(_scrollView.frame.size.width, 0)];
        _pageControl.currentPage = 0;
    }
}

- (void)handTapAction:(UIGestureRecognizer *)tap {
    [self.delagate pushToDetailsView:tap];
}
- (void)dealloc
{
    self.scrollView = nil;
    self.pageControl = nil;
    [super dealloc];
}

@end
