//
//  UIAlertController+DNAlertController.h
//  DNAlert
//
//  Created by nanding on 17/7/17.
//  Copyright © 2017年 nD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertController (DNAlertController)

/**
 显示Alert
 
 @param title alertController的title
 @param message alertController的message
 @param style alertController的style
 @param actions 包含所有alertAction
 @param actionHandles 包含所有的alertAction的点击事件，如果有取消按钮，最后一个元素即为取消事件，一定是最后一个
 @param cancelString 取消按钮上的内容
 @param viewController 要弹出的控制器
 */
+(void)alertShowWithTitle:(NSString *)title Message:(NSString *)message Style:(UIAlertControllerStyle)style ActionArray:(NSArray *)actions ActionHandlesArray:(NSArray *)actionHandles cancelAction:(NSString *)cancelString inController:(UIViewController *)viewController;

@end
