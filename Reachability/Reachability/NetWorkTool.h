//
//  NetWorkTool.h
//  Reachability
//
//  Created by qun on 2021/7/1.
//

#import <Foundation/Foundation.h>
@interface NetWorkTool: NSObject
+ (BOOL)isEnableWIFI;
+ (BOOL)isEnableWWAN;
+(BOOL)isNoNetWork;
@end
