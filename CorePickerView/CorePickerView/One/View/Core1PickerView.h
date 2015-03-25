//
//  CoreCommonPickerView.h
//  CorePickerView
//
//  Created by 冯成林 on 15/3/25.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Core1PickerModel.h"

@interface Core1PickerView : UIPickerView


/*
 *  所属的textField
 */
@property (nonatomic,weak) UITextField *textField;


/*
 *  数据模型
 */
@property (nonatomic,strong) Core1PickerModel *pickerModel;




/*
 *  UI视觉上的值
 */
@property (nonatomic,copy) NSString *selectedUIValue;

/*
 *  UI视觉上的值对应的真实的值，常常用于服务器上传。
 */
@property (nonatomic,copy) NSString *selectedRealValue;
































+(instancetype)pickerView:(Core1PickerModel *)pickerModel;


@end
