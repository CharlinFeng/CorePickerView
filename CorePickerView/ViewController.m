//
//  ViewController.m
//  CorePickerView
//
//  Created by 冯成林 on 15/3/25.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

#import "ViewController.h"
#import "UITextField+PicerView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *tf1;

@property (weak, nonatomic) IBOutlet UITextField *tf2;

@property (weak, nonatomic) IBOutlet UITextField *tf3;




@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //普通的pickerView
    [self normalPickerView];
    
    //键盘模型
    [self keyvaluesPickerView];
    
    //日期选取
    [self datePicker];
}




/*
 *  普通的pickerView
 */
-(void)normalPickerView{
    
    //创建模型
    Core1PickerModel *pickerModel=[Core1PickerModel pickerModel:@[@"男",@"女"]];
    
    //创建pickerView
    Core1PickerView *sexPicerView=[Core1PickerView pickerView:pickerModel];
    
    [_tf1 add1PickerView:sexPicerView];
}




/*
 *  键值对pickerView
 */
-(void)keyvaluesPickerView{
    

    
    Core1KeyValueObj *obj1= [Core1KeyValueObj obj:1 content:@"大众"];
    Core1KeyValueObj *obj2= [Core1KeyValueObj obj:2 content:@"宝马"];
    Core1KeyValueObj *obj3= [Core1KeyValueObj obj:3 content:@"奔驰"];
    Core1KeyValueObj *obj4= [Core1KeyValueObj obj:4 content:@"福特"];

    //建立模型
    Core1PickerModel *pickerModel=[Core1PickerModel pickerModel:@[obj1,obj2,obj3,obj4]];
    
    //建立pickerView
    Core1PickerView *pickerView=[Core1PickerView pickerView:pickerModel];
    
    //添加
    [_tf2 add1PickerView:pickerView];
}



/*
 *  日期选取
 */
-(void)datePicker{
    
    //建立datePicker
    CoreDatePicker *datePicker=[CoreDatePicker datePicker:@"yyyy-MM-dd HH:mm:ss"];
    
    [_tf3 addDatePickerView:datePicker];
}




















/*
 *  值查看
 */
- (IBAction)see1:(id)sender {
    
    NSString *uiValue=_tf1.input1pickerView.selectedUIValue;
    NSString *realValue=_tf1.input1pickerView.selectedRealValue;
    
    NSLog(@"tf1:uiValue=%@,realValue=%@",uiValue,realValue);
}


- (IBAction)see2:(id)sender {
    
    NSString *uiValue=_tf2.input1pickerView.selectedUIValue;
    NSString *realValue=_tf2.input1pickerView.selectedRealValue;
    
    NSLog(@"tf2:uiValue=%@,realValue=%@",uiValue,realValue);
    
}


- (IBAction)see3:(id)sender {
    
    NSString *uiValue=_tf3.datePicker.selectedUIValue;
    NSString *timeStamp=_tf3.datePicker.selectedRealValue;
    
    NSLog(@"tf3:uiValue=%@,realValue=%@",uiValue,timeStamp);
    
}

































- (IBAction)closeKeyboard:(id)sender {
    [self.view endEditing:YES];
}




@end
