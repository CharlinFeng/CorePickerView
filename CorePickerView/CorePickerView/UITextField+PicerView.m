//
//  UITextField+PicerView.m
//  CorePickerView
//
//  Created by 冯成林 on 15/3/25.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

#import "UITextField+PicerView.h"
#import <objc/runtime.h>

#pragma mark - 运行时相关
static char CorePickerViewKey;
static char CoreDatePickerKey;

@implementation UITextField (PicerView)


/*
 *  添加一个inputView:单列
 */
-(void)add1PickerView:(Core1PickerView *)input1PickerView{
    
    self.inputView=input1PickerView;
    
    //记录成员变量
    self.input1pickerView=input1PickerView;
    
    //记录
    input1PickerView.textField=self;
}



/*
 *  添加时间选择器控件
 */
-(void)addDatePickerView:(CoreDatePicker *)datePicker{
    
    self.inputView=datePicker;
    
    //记录成员变量
    self.datePicker=datePicker;
    
    //记录
    datePicker.textField=self;
}











/*
 *  运行时模拟成员变量
 */

-(void)setDatePicker:(CoreDatePicker *)datePicker{
    [self willChangeValueForKey:@"CoreDatePickerKey"];
    objc_setAssociatedObject(self, &CoreDatePickerKey,
                             datePicker,
                             OBJC_ASSOCIATION_ASSIGN);
    [self didChangeValueForKey:@"CoreDatePickerKey"];
}


-(CoreDatePicker *)datePicker{
    return objc_getAssociatedObject(self, &CoreDatePickerKey);
}






-(void)setInput1pickerView:(Core1PickerView *)input1pickerView{
    [self willChangeValueForKey:@"CorePickerViewKey"];
    objc_setAssociatedObject(self, &CorePickerViewKey,
                             input1pickerView,
                             OBJC_ASSOCIATION_ASSIGN);
    [self didChangeValueForKey:@"CorePickerViewKey"];
}



-(Core1PickerView *)input1pickerView{
    return objc_getAssociatedObject(self, &CorePickerViewKey);
}



@end
