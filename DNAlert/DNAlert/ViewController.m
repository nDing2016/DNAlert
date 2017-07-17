//
//  ViewController.m
//  DNAlert
//
//  Created by nanding on 17/7/17.
//  Copyright © 2017年 nD. All rights reserved.
//

#import "ViewController.h"
#import "UIAlertController+DNAlertController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    /**仔细看注释*/
    NSArray *actions = @[@"确定"];
    NSArray *actionHandles = @[^(UIAlertAction *ensureAction){
        [self.navigationController popViewControllerAnimated:YES];
    },
                                ^(UIAlertAction *cancelAction){
                                }];
    
    [UIAlertController alertShowWithTitle:nil Message:@"验证码短信可能略有延迟，确定返回并重新开始" Style:UIAlertControllerStyleAlert ActionArray:actions ActionHandlesArray:actionHandles cancelAction:@"取消" inController:self];

    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
