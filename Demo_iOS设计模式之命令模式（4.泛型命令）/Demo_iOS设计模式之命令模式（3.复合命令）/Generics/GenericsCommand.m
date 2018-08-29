//
//  GenericsCommand.m
//  Demo_iOS设计模式之命令模式（1.原理分析）
//
//  Created by 项正强 on 2018/8/29.
//  Copyright © 2018年 项正强. All rights reserved.
//

#import "GenericsCommand.h"

@interface GenericsCommand <T> ()

@property(nonatomic, strong) T receiver;

@property(nonatomic, strong) void(^commandBlock)(T);

@end

@implementation GenericsCommand

//注意：.h文件的方法声明的类型是T，但是.m的实现的时候却是id类型；这是因为id就是一个万能匹配类型

- (instancetype)initWithReceiver:(id)receiver block:(void (^)(id))commandBlock{
    
    self = [super init];
    
    if (self) {
        
        self.receiver = receiver;
        
        self.commandBlock = commandBlock;
        
    }
    
    return self;
}

+ (id<GameCommandProtocol>)createReceiver:(id)receiver block:(void (^)(id))commandBlock{
    
    return [[GenericsCommand alloc]initWithReceiver:receiver block:commandBlock];
    
}

-(void)operation{
    
    self.commandBlock(self.receiver);
    
}

@end



















