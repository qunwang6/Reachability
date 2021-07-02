//
//  ReachabilityManager.m
//  Reachability
//
//  Created by qun on 2021/7/2.
//

#import "ReachabilityManager.h"
#import "Reachability.h"



NSNotificationName const NetworkConnectedNotification     = @"ReachabilityManagerNotification";
NSNotificationName const NetworkDisconnectedNotification  = @"ReachabilityManagerNotification";

@interface ReachabilityManager ()
@property (strong, nonatomic) Reachability *reachabilityManager;
@end

@implementation ReachabilityManager


+ (instancetype)shareManager
{
    static ReachabilityManager *_sharedManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedManager = [[self alloc] init];
    });

    return _sharedManager;
}
- (void)start
{
    [self.reachabilityManager startNotifier];
}

- (void)stop
{
    [self.reachabilityManager stopNotifier];
    self.reachabilityManager = nil;
}

- (Reachability *)reachabilityManager
{
    if (!_reachabilityManager) {
        if ([[Reachability reachabilityForInternetConnection] currentReachabilityStatus] == ReachableViaWiFi || [[Reachability reachabilityForInternetConnection] currentReachabilityStatus] == ReachableViaWWAN) {
            // 联网
            self->_isConnected = YES;
            [NSNotificationCenter.defaultCenter postNotificationName:NetworkConnectedNotification object:nil];
            
        } else if ([[Reachability reachabilityForInternetConnection] currentReachabilityStatus] == NotReachable) {
            // 断网
            self->_isConnected = NO;
            [NSNotificationCenter.defaultCenter postNotificationName:NetworkDisconnectedNotification object:nil];
            
        } else {
            
        }
        
    }
    return _reachabilityManager;
}

@end

