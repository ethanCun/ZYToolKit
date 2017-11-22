//
//  ZYLabel.m
//  ZYTools
//
//  Created by macOfEthan on 17/11/22.
//  Copyright © 2017年 macOfEthan. All rights reserved.
//

#import "ZYLabel.h"

#define weak(obj) __weak typeof(obj) weak##obj = obj

@implementation ZYLabel

#pragma mark - init
- (instancetype)init
{
    self = [super init];
    if (self) {
        UITapGestureRecognizer *singalTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singalTap:)];
        singalTap.numberOfTapsRequired = 1;
        [self addGestureRecognizer:singalTap];
        
        UITapGestureRecognizer *doubleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(doubleTap:)];
        doubleTap.numberOfTapsRequired = 2;
        [self addGestureRecognizer:doubleTap];
    }
    return self;
}

#pragma mark - create label
+ (ZYLabel *)createZYLabel:(void(^)(ZYLabel *))block;
{

    ZYLabel *zyLabel = [ZYLabel new];
    block(zyLabel);
    
    return zyLabel;
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

- (ZYLabel *(^)(NSString *))textBlock
{
    return ^ZYLabel *(NSString *text){
    
        self.text = text;
        
        return self;
    };
}

- (ZYLabel *(^)(UIColor *textColor))textColorBlock
{
    return ^ZYLabel *(UIColor *textColor){
    
        self.textColor = textColor;
        
        return self;
    };
}

- (ZYLabel *(^)(UIColor *))backGroundColorBlock
{
    return ^ZYLabel *(UIColor *backgroundColor){
    
        self.backgroundColor = backgroundColor;
        
        return self;
    };
}

- (ZYLabel *(^)(UIFont *))fontBlock
{
    return ^ZYLabel *(UIFont *font){
    
        self.font = font;
        
        return self;
    };
}

- (ZYLabel *(^)(NSTextAlignment))textAlignmentBlock
{
    return ^ZYLabel *(NSTextAlignment textAlignment){
    
        self.textAlignment = textAlignment;
        
        return self;
    };
}

- (ZYLabel *(^)(CGRect))frameBlock
{
    return ^ZYLabel *(CGRect frame){
    
        self.frame = frame;
        
        return self;
    };
}


#pragma mark - action
- (ZYLabel *(^)(BOOL))userEnableBlock
{
    return ^ZYLabel *(BOOL isEnabled){
    
        self.userInteractionEnabled = isEnabled;
        
        return self;
    };
}


- (void)singalTap:(UITapGestureRecognizer *)singalTap
{
    
    if (self.singalTapBlock) {
        self.singalTapBlock();
    }
}

- (void)doubleTap:(UITapGestureRecognizer *)doubleTap
{
    
    if (self.doubleTapBlock) {
        self.doubleTapBlock();
    }
}

@end
