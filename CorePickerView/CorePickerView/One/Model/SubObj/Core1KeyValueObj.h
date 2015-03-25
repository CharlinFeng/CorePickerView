//
//  Core1KeyValueObj.h
//  CorePickerView
//
//  Created by 冯成林 on 15/3/25.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Core1KeyValueObj : NSObject


/*
 *  服务器ID:UI对应的值
 */
@property (nonatomic,assign) NSUInteger hostID;


/*
 *  UI值(若此字段与服务器返回的字段不一致，请使用MJ的replaceKey方法解决)
 */
@property (nonatomic,copy) NSString *content;





/*
 *  自行实例化
 */
+(instancetype)obj:(NSUInteger)hostID content:(NSString *)content;


@end
