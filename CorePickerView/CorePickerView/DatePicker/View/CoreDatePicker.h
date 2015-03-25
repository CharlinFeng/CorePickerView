//
//  CoreDatePicker.h
//  CorePickerView
//
//  Created by 冯成林 on 15/3/25.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NSDate+PickerFormat.h"

@interface CoreDatePicker : UIDatePicker


/*
 *  所属的textField
 */
@property (nonatomic,weak) UITextField *textField;



/*
 *  UI视觉上的值:格式化的字符串
 */
@property (nonatomic,copy) NSString *selectedUIValue;


/*
 *  UI视觉上的值对应的真实的值，常常用于服务器上传：时间戳
 */
@property (nonatomic,copy) NSString *selectedRealValue;





/*
 *  实例化
 */
+(instancetype)datePicker:(NSString *)formatter;



@end
