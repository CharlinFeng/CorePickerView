//
//  UITextField+PicerView.h
//  CorePickerView
//
//  Created by 冯成林 on 15/3/25.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Core1PickerView.h"
#import "Core1KeyValueObj.h"
#import "CoreDatePicker.h"

@interface UITextField (PicerView)



/*
 *  自定义的单列pickerView
 */
@property (nonatomic,weak) Core1PickerView *input1pickerView;



/*
 *  时间选取pickerView
 */
@property (nonatomic,weak) CoreDatePicker *datePicker;






/*
 *  添加一个inputView:单列
 */
-(void)add1PickerView:(Core1PickerView *)input1PickerView;




/*
 *  添加时间选择器控件
 */
-(void)addDatePickerView:(CoreDatePicker *)datePicker;






@end
