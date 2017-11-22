//
//  ZYLabel.h
//  ZYTools
//
//  Created by macOfEthan on 17/11/22.
//  Copyright © 2017年 macOfEthan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZYLabel : UILabel

#pragma mark - createZYLabel
+ (ZYLabel *)createZYLabel:(void(^)(ZYLabel *label))block;

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

@property (nonatomic, copy) ZYLabel *(^textBlock)(NSString *text);
@property (nonatomic, copy) ZYLabel *(^textColorBlock)(UIColor *textColor);
@property (nonatomic, copy) ZYLabel *(^backGroundColorBlock)(UIColor *backGroundColor);
@property (nonatomic, copy) ZYLabel *(^fontBlock)(UIFont *font);
@property (nonatomic, copy) ZYLabel *(^textAlignmentBlock)(NSTextAlignment textAlignment);
@property (nonatomic, copy) ZYLabel *(^frameBlock)(CGRect frame);

#pragma mark - action
@property (nonatomic, copy) ZYLabel *(^userEnableBlock)(BOOL isEnabled);
@property (nonatomic, copy) void (^singalTapBlock)(void);
@property (nonatomic, copy) void (^doubleTapBlock)(void);

@end
