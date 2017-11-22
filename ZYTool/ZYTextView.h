//
//  ZYTextView.h
//  ZYTools
//
//  Created by macOfEthan on 17/11/22.
//  Copyright © 2017年 macOfEthan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZYTextView : UITextView

#pragma mark - createZYTextView
+ (ZYTextView *)createZYTextView:(void(^)(ZYTextView *textView))block;

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

@property (nonatomic, copy) ZYTextView *(^textBlock)(NSString *text);
@property (nonatomic, copy) ZYTextView *(^textColorBlock)(UIColor *textColor);
@property (nonatomic, copy) ZYTextView *(^backGroundColorBlock)(UIColor *backGroundColor);
@property (nonatomic, copy) ZYTextView *(^fontBlock)(UIFont *font);
@property (nonatomic, copy) ZYTextView *(^textAlignmentBlock)(NSTextAlignment textAlignment);
@property (nonatomic, copy) ZYTextView *(^frameBlock)(CGRect frame);
@property (nonatomic, copy) ZYTextView *(^cornerRadiusBlock)(CGFloat cornerRadius);

#pragma mark - action
@property (nonatomic, copy) ZYTextView *(^userEnableBlock)(BOOL isEnabled);

@end
