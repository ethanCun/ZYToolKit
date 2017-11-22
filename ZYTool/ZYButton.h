//
//  ZYButton.h
//  ZYTools
//
//  Created by macOfEthan on 17/11/22.
//  Copyright © 2017年 macOfEthan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZYButton : UIButton

#pragma mark - createZYButton
+ (ZYButton *)createZYButton:(void(^)(ZYButton *button))block;

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


@property (nonatomic, copy) ZYButton *(^textBlock)(NSString *text);
@property (nonatomic, copy) ZYButton *(^textColorBlock)(UIColor *textColor);
@property (nonatomic, copy) ZYButton *(^backGroundColorBlock)(UIColor *backGroundColor);
@property (nonatomic, copy) ZYButton *(^fontBlock)(UIFont *font);
@property (nonatomic, copy) ZYButton *(^textAlignmentBlock)(NSTextAlignment textAlignment);
@property (nonatomic, copy) ZYButton *(^lineBreakModeBlock)(NSLineBreakMode mode);
@property (nonatomic, copy) ZYButton *(^imageViewModeBlock)(UIViewContentMode mode);
@property (nonatomic, copy) ZYButton *(^frameBlock)(CGRect frame);
@property (nonatomic, copy) ZYButton *(^titleLabelFrameBlock)(CGRect frame);
@property (nonatomic, copy) ZYButton *(^imageViewFrameBlock)(CGRect frame);
@property (nonatomic, copy) ZYButton *(^normalImageBlock)(UIImage *normalImage);
@property (nonatomic, copy) ZYButton *(^selectImageBlock)(UIImage *selectImage);
@property (nonatomic, copy) ZYButton *(^highlightImageBlock)(UIImage *selectImage);

#pragma mark - action
@property (nonatomic, copy) ZYButton *(^userEnableBlock)(BOOL isEnabled);
@property (nonatomic, copy) void (^clickBlock)(void);
@end
