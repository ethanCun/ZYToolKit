![icon](https://github.com/ethanCun/ZYToolKit/blob/master/ZYToolKit.png)
<hr>

#### 链式封装的UI工具集，使用方法类似Masonry与SDAutolayout

##### 使用方法
1. 手动拉入 ZYToolKits
2. Cocoapods :在Podfile中引入：  pod 'ZYToolKits', '~> 0.0.1'

##### ZYLabel
```
ZYLabel *label = [ZYLabel createZYLabel:^(ZYLabel *label) {
        
        label.frameBlock(CGRectMake(100, 200, 100, 30))
        .textColorBlock([UIColor blackColor])
        .fontBlock([UIFont systemFontOfSize:14])
        .backGroundColorBlock([UIColor brownColor])
        .textAlignmentBlock(NSTextAlignmentCenter)
        .textBlock(@"this is a text")
        .userEnableBlock(YES);
    }];
    
    label.singalTapBlock = ^(){
    
        NSLog(@"singalTap");
    };
    
    label.doubleTapBlock = ^(){
        
        NSLog(@"doubleTap");
    };
    
    label.center = self.view.center;
    
    [self.view addSubview:label];

```

##### ZYView
```
 ZYView *view = [ZYView createZYView:^(ZYView *view) {
        
        view.frameBlock(CGRectMake(10, 10, 30, 30))
        .backGroundColorBlock([UIColor redColor])
        .userEnableBlock(YES);
    }];
    
    view.singalTapBlock = ^(){
        
        NSLog(@"singalTap");
    };
    
    view.doubleTapBlock = ^(){
        
        NSLog(@"doubleTap");
    };
    
    view.size = CGSizeMake(100, 100);
    
    view.top = 20;
    
    [self.view addSubview:view];

```

##### ZYImageView
```
    ZYImageView *imageView = [ZYImageView createZYImageView:^(ZYImageView *imageView) {
        
        imageView.backGroundColorBlock([UIColor redColor])
        .frameBlock(CGRectMake(50, 50, 50, 50))
        .imageBlock([UIImage imageNamed:@"image"])
        .userEnableBlock(YES);
    }];
    
    imageView.singalTapBlock = ^(){
        
        NSLog(@"singalTap");
    };
    
    imageView.doubleTapBlock = ^(){
        
        NSLog(@"doubleTap");
    };
    
    imageView.top = 300;
    
    [self.view addSubview:imageView];

```

##### ZYButton 
```
ZYButton *button = [ZYButton createZYButton:^(ZYButton *button) {
        
        button.frameBlock(CGRectMake(150, 450, 100, 100))
        .backGroundColorBlock([UIColor redColor])
        .textAlignmentBlock(NSTextAlignmentCenter)
        .userEnableBlock(YES).textBlock(@"button")
        .textColorBlock([UIColor whiteColor])
        .lineBreakModeBlock(NSLineBreakByTruncatingTail)
        .fontBlock([UIFont systemFontOfSize:30])
        .normalImageBlock([UIImage imageNamed:@"image"])
        .highlightImageBlock([UIImage imageNamed:@"image"])
        .titleLabelFrameBlock(CGRectMake(0, 0, CGRectGetWidth(button.frame), 0.3*CGRectGetHeight(button.frame)))
        .imageViewFrameBlock(CGRectMake(0, 0.3*CGRectGetHeight(button.frame), CGRectGetWidth(button.frame), 0.7*CGRectGetHeight(button.frame)));
    }];
    
    button.top = 20;
    
    button.clickBlock = ^(){
        NSLog(@"点击了按钮");
    };
    
    [self.view addSubview:button];
```

```
  ZYTextField *textField = [ZYTextField createZYTextField:^(ZYTextField *textField) {
        
        UIView *v1 = [UIView new];
        v1.frame = CGRectMake(0, 0, 30, 30);
        v1.backgroundColor = [UIColor blueColor];
        
        UIView *v2 = [UIView new];
        v2.frame = CGRectMake(0, 0, 30, 30);
        v2.backgroundColor = [UIColor redColor];
        
        textField.frameBlock(CGRectMake(100, 200, 200, 30))
        .textBlock(@"this is a textField")
        .textColorBlock([UIColor redColor])
        .backGroundColorBlock([UIColor greenColor])
        .clearButtonModeBlock(UITextFieldViewModeWhileEditing)
        .leftViewBlock(v1).leftViewModeBlock(UITextFieldViewModeAlways)
        .rightViewBlock(v2).rightViewModeBlock(UITextFieldViewModeAlways)
        .cornerRadiusBlock(5.0f);
    }];
    
    [self.view addSubview:textField];
```

##### ZYTextView
```
    ZYTextView *textView = [ZYTextView createZYTextView:^(ZYTextView *textView) {
        
        textView.frameBlock(CGRectMake(100, 500, 200, 100))
        .textBlock(@"this is a textView")
        .fontBlock([UIFont systemFontOfSize:30])
        .textColorBlock([UIColor redColor])
        .backGroundColorBlock([UIColor lightGrayColor])
        .cornerRadiusBlock(10.0f);
    }];
    
    [self.view addSubview:textView];
```

#### 效果图
![image](https://github.com/ethanCun/ZYToolKit/blob/master/Simulator%20Screen%20Shot%202017%E5%B9%B411%E6%9C%8822%E6%97%A5%20%E4%B8%8B%E5%8D%882.48.32.png)
