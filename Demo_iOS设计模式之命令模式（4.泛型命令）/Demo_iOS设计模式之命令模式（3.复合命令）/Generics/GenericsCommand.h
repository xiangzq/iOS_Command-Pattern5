//
//  GenericsCommand.h
//  Demo_iOS设计模式之命令模式（1.原理分析）
//
//  Created by 项正强 on 2018/8/29.
//  Copyright © 2018年 项正强. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameCommandProtocol.h"

/*
 泛型命令是个万能命令
 T：表示任意类型标记（表示符）
 泛型的好处就是扩展性很好
 
 */

@interface GenericsCommand <T> : NSObject <GameCommandProtocol>

- (instancetype)initWithReceiver:(T)receiver block:(void(^)(T))commandBlock;

//提供一个创建命令的类方法
+ (id<GameCommandProtocol>)createReceiver:(T)receiver block:(void(^)(T))commandBlock;

@end





















