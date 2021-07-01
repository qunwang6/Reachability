//
//  MBProgressHUD+NJ.h
//  NJWisdomCard
//
//  Created by apple on 15/8/25.
//  Copyright (c) 2015年 Weconex. All rights reserved.
//

#import <MBProgressHUD/MBProgressHUD.h>

@interface MBProgressHUD (NJ)

+ (MBProgressHUD *)showSuccess:(NSString *)success;
+ (MBProgressHUD *)showSuccess:(NSString *)success toView:(UIView *)view;

+ (MBProgressHUD *)showError:(NSString *)error;
+ (MBProgressHUD *)showError:(NSString *)error toView:(UIView *)view;

+ (MBProgressHUD *)showMessage:(NSString *)message;
+ (MBProgressHUD *)showMessage:(NSString *)message toView:(UIView *)view;

+ (MBProgressHUD *)showInfo:(NSString *)info;
+ (MBProgressHUD *)showInfo:(NSString *)info toView:(UIView *)view;
+ (MBProgressHUD *)showBlackInfo:(NSString *)info toView:(UIView *)view;

+ (MBProgressHUD *)showProgress:(CGFloat)progress toView:(UIView *)view;

+ (MBProgressHUD *)showLoading:(NSString *)messsage toView:(UIView *)view;

+ (void)hideHUD;
+ (void)hideHUDForView:(UIView *)view;

@end
