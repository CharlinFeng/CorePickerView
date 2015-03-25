//
//  NSDate+PickerFormat.h
//  CorePickerView
//
//  Created by 冯成林 on 15/3/25.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (PickerFormat)


/*
 *  时间戳
 */
@property (nonatomic,copy,readonly) NSString *timestamp;



/*
 *  NSDate->格式化字符串
 */
-(NSString *)dateFormatter:(NSString *)formatter;


@end
