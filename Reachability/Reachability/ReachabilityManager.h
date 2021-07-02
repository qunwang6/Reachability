//
//  ReachabilityManager.h
//  Reachability
//
//  Created by qun on 2021/7/2.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ReachabilityManager : NSObject
+ (instancetype)shareManager;
@property (assign, nonatomic) BOOL isConnected;
-(void)start;
-(void)stop;

FOUNDATION_EXPORT NSNotificationName const TNetworkConnectedNotification;
FOUNDATION_EXPORT NSNotificationName const NetworkDisconnectedNotification;

@end

NS_ASSUME_NONNULL_END
