//
//  WrapperCommand.m
//  Demo_iOS设计模式之命令模式（1.原理分析）
//
//  Created by 项正强 on 2018/8/28.
//  Copyright © 2018年 项正强. All rights reserved.
//

#import "WrapperCommand.h"

@interface WrapperCommand ()

@property (nonatomic, strong) NSMutableArray *commands;

@end

@implementation WrapperCommand

-(instancetype)initWithWithCommands:(NSMutableArray *)commands{
    
    if (self = [super init]) {
        
        self.commands = commands;
        
    }
    
    return self;
}


//调用执行多个命令，叫做复合命令
-(void)operation{
    
    for (id<GameCommandProtocol> command in self.commands) {
        
        [command operation];
        
    }
    
}







@end
