//
//  RLNewMessageHelper.m
//  RLNewMessage
//
//  Created by Ricky Lin on 16/3/23.
//  Copyright © 2016年 Ricky2048. All rights reserved.
//

#import "RLNewMessageHelper.h"

#import "RLMessageViewController.h"

@interface RLNewMessageHelper()
{
    /**
     *  消息页面开始的顶部导航
     */
    UINavigationController *_navigationController;
    
    /**
     *  上一层窗口
     */
    UIWindow *_mainWindow;
    
    /**
     *  消息的窗口
     */
    UIWindow *_messageWindow;
    
    /**
     *  消息页面 可以自定义内容
     */
    RLMessageViewController *_messageVC;
}

@end

@implementation RLNewMessageHelper

- (instancetype)init
{
    self = [super init];
    
    if (self) {

    }
    
    return self;
    
}

+ (instancetype)defaultInstance {
    
    static RLNewMessageHelper *sharedInstance = nil;
    
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        
        sharedInstance = [[self alloc] init];
    });
    
    return sharedInstance;
}


- (void)showMesage:(id)msg;
{
    // 获取获取展示之前的窗口
    _mainWindow = [UIApplication sharedApplication].keyWindow;
    
    _messageWindow = [[UIWindow alloc] initWithFrame:_mainWindow.bounds];
    
    _messageVC = [[RLMessageViewController alloc] initWithNibName:@"RLMessageViewController" bundle:nil];
    
    [_messageVC setMessage:msg];
    
    _navigationController = [[UINavigationController alloc] initWithRootViewController:_messageVC];
    
    _messageWindow.rootViewController = _navigationController;
    
    [_messageWindow makeKeyAndVisible];
    
}

- (void)dismissMessage
{
    [_mainWindow makeKeyAndVisible];
    
    _navigationController = nil;
    
    _messageVC = nil;
    
}

@end
