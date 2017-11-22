//
//  ZYImageView.h
//  ZYTools
//
//  Created by macOfEthan on 17/11/22.
//  Copyright © 2017年 macOfEthan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZYImageView : UIImageView

#pragma mark - createZYImageView
+ (ZYImageView *)createZYImageView:(void(^)(ZYImageView *imageView))block;

#pragma mark - UI

// 主要用于修正frame 所以不写成链式
@property (nonatomic, assign) CGFloat left;
@property (nonatomic, assign) CGFloat top;
@property (nonatomic, assign) CGFloat right;
@property (nonatomic, assign) CGFloat bottom;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;
@property (nonatomic, assign) CGPoint origin;
@property (nonatomic, assign) CGSize  size;

@property (nonatomic, copy) ZYImageView *(^backGroundColorBlock)(UIColor *backGroundColor);
@property (nonatomic, copy) ZYImageView *(^frameBlock)(CGRect frame);
@property (nonatomic, copy) ZYImageView *(^imageBlock)(UIImage *image);


#pragma mark - action
@property (nonatomic, copy) ZYImageView *(^userEnableBlock)(BOOL isEnabled);
@property (nonatomic, copy) void (^singalTapBlock)(void);
@property (nonatomic, copy) void (^doubleTapBlock)(void);

@end
