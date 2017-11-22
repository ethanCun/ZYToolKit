//
//  ZYTextView.m
//  ZYTools
//
//  Created by macOfEthan on 17/11/22.
//  Copyright © 2017年 macOfEthan. All rights reserved.
//

#import "ZYTextView.h"

@implementation ZYTextView

+ (ZYTextView *)createZYTextView:(void(^)(ZYTextView *textView))block
{
    ZYTextView *zyTextView = [ZYTextView new];
    block(zyTextView);
    
    return zyTextView;
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

- (ZYTextView *(^)(NSString *))textBlock
{
    return ^ZYTextView *(NSString *text){
        
        self.text = text;
        
        return self;
    };
}

- (ZYTextView *(^)(UIColor *textColor))textColorBlock
{
    return ^ZYTextView *(UIColor *textColor){
        
        self.textColor = textColor;
        
        return self;
    };
}

- (ZYTextView *(^)(UIColor *))backGroundColorBlock
{
    return ^ZYTextView *(UIColor *backgroundColor){
        
        self.backgroundColor = backgroundColor;
        
        return self;
    };
}

- (ZYTextView *(^)(UIFont *))fontBlock
{
    return ^ZYTextView *(UIFont *font){
        
        self.font = font;
        
        return self;
    };
}

- (ZYTextView *(^)(NSTextAlignment))textAlignmentBlock
{
    return ^ZYTextView *(NSTextAlignment textAlignment){
        
        self.textAlignment = textAlignment;
        
        return self;
    };
}

- (ZYTextView *(^)(CGRect))frameBlock
{
    return ^ZYTextView *(CGRect frame){
        
        self.frame = frame;
        
        return self;
    };
}

- (ZYTextView *(^)(CGFloat))cornerRadiusBlock
{
    return ^ZYTextView *(CGFloat cornerRadius){
        
        self.layer.cornerRadius = cornerRadius;
        self.layer.masksToBounds = YES;
        
        return self;
    };
}

#pragma mark - action
- (ZYTextView *(^)(BOOL))userEnableBlock
{
    return ^ZYTextView *(BOOL isEnabled){
        
        self.userInteractionEnabled = isEnabled;
        
        return self;
    };
}


@end
