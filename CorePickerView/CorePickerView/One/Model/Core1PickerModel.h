//
//  CorePickerModel.h
//  CorePickerView
//
//  Created by 冯成林 on 15/3/25.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef enum{
    
    /*
     *  普通值
     */
    Core1PickerModelTypeNorMal=0,
    
    
    /*
     *  键值对
     */
    Core1PickerModelTypeKeyValue,
    
    
    
    
}Core1PickerModelType;








@interface Core1PickerModel : NSObject


/*
 *  数据数组
 */
@property (nonatomic,strong) NSArray *dataList;



/*
 *  辅助提示数据
 */
@property (nonatomic,copy) NSString *warnStr;



/*
 *  类型
 */
@property (nonatomic,assign) Core1PickerModelType type;




/*
 *  将UIValue转为RealValue
 */
-(id)selectedRealValueWithUIValue:(NSString *)selectedUIValue;





/*
 *  快速创建
 */
+(instancetype)pickerModel:(NSArray *)dataList;


@end
