//
//  CoreCommonPickerView.m
//  CorePickerView
//
//  Created by 冯成林 on 15/3/25.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

#import "Core1PickerView.h"
#import "Core1KeyValueObj.h"
#import "CorePickerViewDefine.h"

@interface Core1PickerView ()<UIPickerViewDataSource,UIPickerViewDelegate>

@end


@implementation Core1PickerView

+(instancetype)pickerView:(Core1PickerModel *)pickerModel{
    
    Core1PickerView *pickerView=[[self alloc] initWithFrame:CGRectZero];
    
    pickerView.pickerModel=pickerModel;
    
    pickerView.backgroundColor=PickerViewBgColor;
    
    //设置数据源及代理
    pickerView.dataSource=pickerView;
    pickerView.delegate=pickerView;
    
    
    return pickerView;
}




/*
 *  代理方法区
 */

/*
 *  共有多少列
 */
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

/*
 *  列内有多少行
 */
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return _pickerModel.dataList.count;
}


/*
 *  每列显示数据
 */
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    //如果是键值模型
    if(Core1PickerModelTypeKeyValue ==  _pickerModel.type) {
        
        Core1KeyValueObj *keyValueObj=(Core1KeyValueObj *) _pickerModel.dataList[row];
        
        return keyValueObj.content;
    }
    
    return _pickerModel.dataList[row];
}





/*
 *  值改变
 */
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
    NSString *str=@"";
    
    //如果是键值模型
    if(Core1PickerModelTypeKeyValue ==  _pickerModel.type) {
        
        Core1KeyValueObj *keyValueObj=(Core1KeyValueObj *) _pickerModel.dataList[row];
        
        str=keyValueObj.content;
        
        if([keyValueObj.content isEqualToString:_pickerModel.warnStr]) str=@"";
        
    }else{
        
        str=_pickerModel.dataList[row];
        
        if([str isEqualToString:_pickerModel.warnStr]) str=@"";
    }
    
    //UI值
    _selectedUIValue=str;
    
    //UI对应值
    _selectedRealValue=[_pickerModel selectedRealValueWithUIValue:str];
    
    _textField.text=str;
}










@end
