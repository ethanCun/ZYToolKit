//
//  ZYButton.m
//  ZYTools
//
//  Created by macOfEthan on 17/11/22.
//  Copyright © 2017年 macOfEthan. All rights reserved.
//

#import "ZYButton.h"

@interface ZYButton ()

@property (nonatomic, assign) CGRect titleLabelFrame;
@property (nonatomic, assign) CGRect imageViewFrame;

@end

@implementation ZYButton

#pragma mark - init
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

#pragma mark - layoutSubviews
- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.titleLabel.frame = _titleLabelFrame;
    self.imageView.frame = _imageViewFrame;
}

#pragma mark - createZYButton
+ (ZYButton *)createZYButton:(void(^)(ZYButton *))block;
{
    
    ZYButton *zyButton = [ZYButton new];
    block(zyButton);
    
    return zyButton;
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

- (ZYButton *(^)(NSString *))textBlock
{
    return ^ZYButton *(NSString *text){
        
        [self setTitle:text forState:UIControlStateNormal];
        
        return self;
    };
}

- (ZYButton *(^)(UIColor *textColor))textColorBlock
{
    return ^ZYButton *(UIColor *textColor){
        
        [self setTitleColor:textColor forState:UIControlStateNormal];
        
        return self;
    };
}

- (ZYButton *(^)(UIColor *))backGroundColorBlock
{
    return ^ZYButton *(UIColor *backgroundColor){
        
        self.backgroundColor = backgroundColor;
        
        return self;
    };
}


- (ZYButton *(^)(UIFont *))fontBlock
{
    return ^ZYButton *(UIFont *font){
        
        self.titleLabel.font = font;
        
        return self;
    };
}

- (ZYButton *(^)(NSTextAlignment))textAlignmentBlock
{
    return ^ZYButton *(NSTextAlignment textAlignment){
        
        self.titleLabel.textAlignment = textAlignment;
        
        return self;
    };
}

- (ZYButton *(^)(NSLineBreakMode))lineBreakModeBlock
{
    return ^ZYButton *(NSLineBreakMode mode){
    
        self.titleLabel.lineBreakMode = mode;
        
        return self;
    };
}

- (ZYButton *(^)(UIViewContentMode))imageViewModeBlock
{
    return ^ZYButton *(UIViewContentMode mode){
        
        self.imageView.contentMode = mode;
        
        return self;
    };
}

- (ZYButton *(^)(CGRect))frameBlock
{
    return ^ZYButton *(CGRect frame){
        
        self.frame = frame;
        
        return self;
    };
}

- (ZYButton *(^)(CGRect))titleLabelFrameBlock
{
    return ^ZYButton *(CGRect frame){
    
        _titleLabelFrame = frame;
        
        [self layoutIfNeeded];
        
        return self;
    };
}

- (ZYButton *(^)(CGRect))imageViewFrameBlock
{
    return ^ZYButton *(CGRect frame){
        
        _imageViewFrame = frame;
        
        [self layoutIfNeeded];
      
        return self;
    };
}

- (ZYButton *(^)(UIImage *))normalImageBlock
{
    return ^ZYButton *(UIImage *normalImage){
    
        [self setImage:normalImage forState:UIControlStateNormal];
        
        return self;
    };
}

- (ZYButton *(^)(UIImage *))selectImageBlock
{
    return ^ZYButton *(UIImage *selectImage){
        
        [self setImage:selectImage forState:UIControlStateSelected];
        
        return self;
    };
}

- (ZYButton *(^)(UIImage *))highlightImageBlock
{
    return ^ZYButton *(UIImage *selectImage){
        
        [self setImage:selectImage forState:UIControlStateHighlighted];
        
        return self;
    };
}

#pragma mark - action
- (ZYButton *(^)(BOOL))userEnableBlock
{
    return ^ZYButton *(BOOL isEnabled){
        
        self.userInteractionEnabled = isEnabled;
        
        return self;
    };
}


- (void)click:(ZYButton *)sender
{
    if (self.clickBlock) {
        self.clickBlock();
    }
}


@end
