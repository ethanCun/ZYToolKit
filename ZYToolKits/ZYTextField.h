//
//  ZYTextField.h
//  ZYTools
//
//  Created by macOfEthan on 17/11/22.
//  Copyright © 2017年 macOfEthan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZYTextField : UITextField

#pragma mark - createZYTextField
+ (ZYTextField *)createZYTextField:(void(^)(ZYTextField *textField))block;


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

@property (nonatomic, copy) ZYTextField *(^textBlock)(NSString *text);
@property (nonatomic, copy) ZYTextField *(^placeholderBlock)(NSString *text);
@property (nonatomic, copy) ZYTextField *(^textColorBlock)(UIColor *textColor);
@property (nonatomic, copy) ZYTextField *(^backGroundColorBlock)(UIColor *backGroundColor);
@property (nonatomic, copy) ZYTextField *(^fontBlock)(UIFont *font);
@property (nonatomic, copy) ZYTextField *(^textAlignmentBlock)(NSTextAlignment textAlignment);
@property (nonatomic, copy) ZYTextField *(^clearButtonModeBlock)(UITextFieldViewMode mode);
@property (nonatomic, copy) ZYTextField *(^frameBlock)(CGRect frame);
@property (nonatomic, copy) ZYTextField *(^leftViewModeBlock)(UITextFieldViewMode mode);
@property (nonatomic, copy) ZYTextField *(^rightViewModeBlock)(UITextFieldViewMode mode);
@property (nonatomic, copy) ZYTextField *(^leftViewBlock)(UIView *leftView);
@property (nonatomic, copy) ZYTextField *(^rightViewBlock)(UIView *rightView);
@property (nonatomic, copy) ZYTextField *(^cornerRadiusBlock)(CGFloat cornerRadius);

#pragma mark - action
@property (nonatomic, copy) ZYTextField *(^userEnableBlock)(BOOL isEnabled);

@end
