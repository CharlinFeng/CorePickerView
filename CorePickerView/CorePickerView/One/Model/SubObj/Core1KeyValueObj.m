//
//  Core1KeyValueObj.m
//  CorePickerView
//
//  Created by 冯成林 on 15/3/25.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

#import "Core1KeyValueObj.h"

@implementation Core1KeyValueObj




/*
 *  自行实例化
 */
+(instancetype)obj:(NSUInteger)hostID content:(NSString *)content{
    
    Core1KeyValueObj *obj=[[self alloc] init];
    
    obj.hostID=hostID;
    
    obj.content=content;
    
    return obj;
}



@end
