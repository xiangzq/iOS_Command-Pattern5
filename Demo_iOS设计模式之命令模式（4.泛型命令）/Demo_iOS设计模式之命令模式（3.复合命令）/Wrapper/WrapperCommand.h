//
//  WrapperCommand.h
//  Demo_iOS设计模式之命令模式（1.原理分析）
//
//  Created by 项正强 on 2018/8/28.
//  Copyright © 2018年 项正强. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameCommandProtocol.h"

@interface WrapperCommand : NSObject <GameCommandProtocol>

-(instancetype)initWithWithCommands:(NSMutableArray *)commands;

@end
