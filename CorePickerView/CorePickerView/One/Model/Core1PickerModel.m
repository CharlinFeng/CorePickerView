//
//  CorePickerModel.m
//  CorePickerView
//
//  Created by 冯成林 on 15/3/25.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

#import "Core1PickerModel.h"
#import "Core1KeyValueObj.h"


@implementation Core1PickerModel


/*
 *  快速创建
 */
+(instancetype)pickerModel:(NSArray *)dataList{
    
    Core1PickerModel *pickerModel=[[self alloc] init];
    
    pickerModel.dataList=dataList;
    
    return pickerModel;
}








-(void)setDataList:(NSArray *)dataList{
    
    NSMutableArray *dataListM=[NSMutableArray arrayWithArray:dataList];
    
    //计算type值
    [self calType:dataList];
    
    //添加第一个提示对象
    id firstWarnObj=[self warnObjWithType];
    
    [dataListM insertObject:firstWarnObj atIndex:0];
    
    _dataList=[dataListM copy];
}


/*
 *  计算type值
 */
-(void)calType:(NSArray *)dataList{
    
    //直接取出第一个对象
    id obj=dataList.firstObject;
    
    self.type = ([obj isKindOfClass:[Core1KeyValueObj class]])?Core1PickerModelTypeKeyValue:Core1PickerModelTypeNorMal;
}


/*
 *  根据type值返回第一个提示对象
 */
-(id)warnObjWithType{

    if(Core1PickerModelTypeKeyValue == self.type) return [Core1KeyValueObj obj:0 content:self.warnStr];
    
    return self.warnStr;
}




-(NSString *)warnStr{
    
    if(_warnStr==nil){
        
        _warnStr=@"请选择";
    }
    
    return _warnStr;
}



/*
 *  将UIValue转为RealValue
 */
-(id)selectedRealValueWithUIValue:(NSString *)selectedUIValue{
    
    //如果是普通模型
    if(Core1PickerModelTypeNorMal == _type) return selectedUIValue;
    
    for (Core1KeyValueObj *keyValueObj in _dataList) {
        
        if(![keyValueObj.content isEqualToString:selectedUIValue]) continue;
        
        return @(keyValueObj.hostID);
    }
    
    return @(0);
}














@end
