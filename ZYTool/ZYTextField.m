//
//  ZYTextField.m
//  ZYTools
//
//  Created by macOfEthan on 17/11/22.
//  Copyright © 2017年 macOfEthan. All rights reserved.
//

#import "ZYTextField.h"

@interface ZYTextField ()

@end

@implementation ZYTextField


#pragma mark - createZYTextField
+ (ZYTextField *)createZYTextField:(void(^)(ZYTextField *))block;
{
    ZYTextField *zyTextfield = [ZYTextField new];
    block(zyTextfield);
    
    return zyTextfield;
}

#pragma mark - UI
- (CGFloat)left {
    return self.frame.origin.x;
}

- (void)setLeft:(CGFloat)x {
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)top {
    return self.frame.origin.y;
}

- (void)setTop:(CGFloat)y {
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)right {
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setRight:(CGFloat)right {
    CGRect frame = self.frame;
    frame.origin.x = right - frame.size.width;
    self.frame = frame;
}

- (CGFloat)bottom {
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setBottom:(CGFloat)bottom {
    CGRect frame = self.frame;
    frame.origin.y = bottom - frame.size.height;
    self.frame = frame;
}

- (CGFloat)width {
    return self.frame.size.width;
}

- (void)setWidth:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)height {
    return self.frame.size.height;
}

- (void)setHeight:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGFloat)centerX {
    return self.center.x;
}

- (void)setCenterX:(CGFloat)centerX {
    self.center = CGPointMake(centerX, self.center.y);
}

- (CGFloat)centerY {
    return self.center.y;
}

- (void)setCenterY:(CGFloat)centerY {
    self.center = CGPointMake(self.center.x, centerY);
}

- (CGPoint)origin {
    return self.frame.origin;
}

- (void)setOrigin:(CGPoint)origin {
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (CGSize)size {
    return self.frame.size;
}

- (void)setSize:(CGSize)size {
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (ZYTextField *(^)(NSString *))textBlock
{
    return ^ZYTextField *(NSString *text){
        
        self.text = text;
        
        return self;
    };
}

- (ZYTextField *(^)(NSString *))placeholderBlock
{
    return ^ZYTextField *(NSString *placeholder){
        
        self.placeholder = placeholder;
        
        return self;
    };
}

- (ZYTextField *(^)(UIColor *textColor))textColorBlock
{
    return ^ZYTextField *(UIColor *textColor){
        
        self.textColor = textColor;
        
        return self;
    };
}

- (ZYTextField *(^)(UIColor *))backGroundColorBlock
{
    return ^ZYTextField *(UIColor *backgroundColor){
        
        self.backgroundColor = backgroundColor;
        
        return self;
    };
}

- (ZYTextField *(^)(UIFont *))fontBlock
{
    return ^ZYTextField *(UIFont *font){
        
        self.font = font;
        
        return self;
    };
}

- (ZYTextField *(^)(NSTextAlignment))textAlignmentBlock
{
    return ^ZYTextField *(NSTextAlignment textAlignment){
        
        self.textAlignment = textAlignment;
        
        return self;
    };
}

- (ZYTextField *(^)(UITextFieldViewMode))clearButtonModeBlock
{
    return ^ZYTextField *(UITextFieldViewMode mode){
        
        self.clearButtonMode = mode;
        
        return self;
    };
}

- (ZYTextField *(^)(CGRect))frameBlock
{
    return ^ZYTextField *(CGRect frame){
        
        self.frame = frame;
        
        return self;
    };
}

- (ZYTextField *(^)(UITextFieldViewMode))leftViewModeBlock
{
    return ^ZYTextField *(UITextFieldViewMode mode){
        
        self.leftViewMode = mode;
        
        return self;
    };
}

- (ZYTextField *(^)(UITextFieldViewMode))rightViewModeBlock
{
    return ^ZYTextField *(UITextFieldViewMode mode){
        
        self.rightViewMode = mode;
        
        return self;
    };
}

- (ZYTextField *(^)(UIView *))leftViewBlock
{
    return ^ZYTextField *(UIView *leftView){
        
        self.leftView = leftView;
        
        return self;
    };
}

- (ZYTextField *(^)(UIView *))rightViewBlock
{
    return ^ZYTextField *(UIView *rightView){
        
        self.rightView = rightView;
        
        return self;
    };
}

- (ZYTextField *(^)(CGFloat))cornerRadiusBlock
{
    return ^ZYTextField *(CGFloat cornerRadius){
        
        self.layer.cornerRadius = cornerRadius;
        self.layer.masksToBounds = YES;
        
        return self;
    };
}

#pragma mark - action
- (ZYTextField *(^)(BOOL))userEnableBlock
{
    return ^ZYTextField *(BOOL isEnabled){
        
        self.userInteractionEnabled = isEnabled;
        
        return self;
    };
}



@end
