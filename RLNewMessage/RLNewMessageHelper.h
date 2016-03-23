//
//  RLNewMessageHelper.h
//  RLNewMessage
//
//  Created by Ricky Lin on 16/3/23.
//  Copyright © 2016年 Ricky2048. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RLNewMessageHelper : NSObject

/**
 *  获取单例
 *
 *  @return 返回单例
 */
+ (instancetype)defaultInstance;

/**
 *  展示消息页面
 *
 *  @param msg 消息Model
 */
- (void)showMesage:(id)msg;

/**
 *  退出消息页面
 */
- (void)dismissMessage;

@end
