//
//  NetWorkTool.m
//  Reachability
//
//  Created by qun on 2021/7/1.
//

#import "NetWorkTool.h"
#import "Reachability.h"

@implementation NetWorkTool

//检查是否Wi-Fi网络
+(BOOL)isEnableWIFI{
   return  [[Reachability reachabilityForInternetConnection] currentReachabilityStatus] == ReachableViaWiFi;
}

//检查是否移动网络
+(BOOL)isEnableWWAN{
    //return [[Reachability reachabilityForLocalWiFi] currentReachabilityStatus] != NotReachable;
    return [[Reachability reachabilityForInternetConnection] currentReachabilityStatus] == ReachableViaWWAN;
}

@end
