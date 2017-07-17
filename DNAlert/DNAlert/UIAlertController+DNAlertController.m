//
//  UIAlertController+DNAlertController.m
//  DNAlert
//
//  Created by nanding on 17/7/17.
//  Copyright © 2017年 nD. All rights reserved.
//

#import "UIAlertController+DNAlertController.h"

@implementation UIAlertController (DNAlertController)

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
+(void)alertShowWithTitle:(NSString *)title Message:(NSString *)message Style:(UIAlertControllerStyle)style ActionArray:(NSArray *)actions ActionHandlesArray:(NSArray *)actionHandles cancelAction:(NSString *)cancelString inController:(UIViewController *)viewController
{
    
    
    UIAlertController *alertCtl = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:style];
    if (title.length>0) {
        NSMutableAttributedString *titleStr = [[NSMutableAttributedString alloc] initWithString:title];
        [titleStr addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:16] range:NSMakeRange(0, title.length)];
        [alertCtl setValue:titleStr forKey:@"attributedTitle"];
    }
    
    if (message.length>0) {
        NSMutableAttributedString *messageStr = [[NSMutableAttributedString alloc] initWithString:message];
        [messageStr addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:16] range:NSMakeRange(0, message.length)];
        [alertCtl setValue:messageStr forKey:@"attributedMessage"];
        
    }
    
    if (cancelString.length>0) {
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:cancelString style:UIAlertActionStyleCancel handler:actionHandles[actionHandles.count-1]];
        
        [alertCtl addAction:cancelAction];
        
        
    }
    
    for (int i =0; i<actions.count; i++) {
        UIAlertAction *alertAction = [UIAlertAction actionWithTitle:actions[i] style:UIAlertActionStyleDefault handler:actionHandles[i]];
        [alertCtl addAction:alertAction];
        
        
        
    }
    
    [viewController presentViewController:alertCtl animated:YES completion:nil];
    
}



@end
