//
//  NSDate+PickerFormat.m
//  CorePickerView
//
//  Created by 冯成林 on 15/3/25.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

#import "NSDate+PickerFormat.h"

@implementation NSDate (PickerFormat)



/*
 *  时间戳
 */
-(NSString *)timestamp{
    
    //计算时间戳：
    NSInteger timestamp=(NSInteger)[self timeIntervalSince1970];
    
    NSString *timestampString=[NSString stringWithFormat:@"%li",(long)timestamp];
    
    //返回
    return timestampString;
}



/*
 *  NSDate->格式化字符串
 */
-(NSString *)dateFormatter:(NSString *)formatter{
    
    //实例化时间格式化工具
    NSDateFormatter *formatterTool=[[NSDateFormatter alloc] init];
    
    //定义格式
    formatterTool.dateFormat=formatter;
    
    //时间转化为字符串
    NSString *dateString = [formatterTool stringFromDate:self];
    
    return dateString;
}




@end
