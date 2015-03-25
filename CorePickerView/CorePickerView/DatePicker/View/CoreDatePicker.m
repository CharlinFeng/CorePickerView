//
//  CoreDatePicker.m
//  CorePickerView
//
//  Created by 冯成林 on 15/3/25.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

#import "CoreDatePicker.h"
#import "CorePickerViewDefine.h"



@interface CoreDatePicker ()

@property (nonatomic,copy) NSString *formatter;

@end


@implementation CoreDatePicker


/*
 *  实例化
 */
+(instancetype)datePicker:(NSString *)formatter{
    
    CoreDatePicker *datePicker=[[self alloc] init];
    
    //背景色
    datePicker.backgroundColor=PickerViewBgColor;
    
    datePicker.formatter=formatter;
    
    //本地化
    datePicker.locale=[NSLocale localeWithLocaleIdentifier:@"zh_CH"];
    
    //事件
    [datePicker addTarget:datePicker action:@selector(selectedDatePickerRow:) forControlEvents:UIControlEventValueChanged];
    
    return datePicker;
}





-(void)selectedDatePickerRow:(CoreDatePicker *)datePicker{
    
    NSDate *date=datePicker.date;
    
    NSString *formatString=[date dateFormatter:_formatter];
    
    NSString *timeStamp=date.timestamp;
    
    //界面显示
    _textField.text=formatString;
    
    //UI值
    _selectedUIValue=formatString;
    
    //真实值
    _selectedRealValue=timeStamp;
}





@end
