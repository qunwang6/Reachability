//
//  ViewController.m
//  Reachability
//
//  Created by qun on 2021/7/1.
//

#import "ViewController.h"
#import "Reachability.h"
#import "NetWorkTool.h"
#import "MBProgressHUD+NJ.h"

@interface ViewController ()
@property(nonatomic,strong) Reachability *reachability;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //注册网络状态通知
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(netWorkStatusChange) name:kReachabilityChangedNotification object:nil];
    
    //获取Reachability对象
    self.reachability = [Reachability reachabilityForInternetConnection];
    
    //开始监听网络变化
    [self.reachability startNotifier];
}
//关闭通知并释放对象
-(void)dealloc{
    [self.reachability stopNotifier];
    //[[NSNotificationCenter defaultCenter] removeObserver:self];
    [NSNotificationCenter.defaultCenter removeObserver:self name:kReachabilityChangedNotification object:nil];
}

//网络变化
-(void)netWorkStatusChange{
    NSLog(@"当前网络发生改变");
    [self checkCurNetWork];
}

//检测网络
-(void) checkCurNetWork{
    if ([NetWorkTool isEnableWIFI]) {
        NSLog(@"当前网络为Wi-Fi网络");
        [MBProgressHUD showInfo:@"当前网络为Wi-Fi网络" toView:self.view];
    }else if ([NetWorkTool isEnableWWAN]){
        NSLog(@"当前网络为移动网络");
        [MBProgressHUD showInfo:@"当前网络为移动网络" toView:self.view];
    }else{
        NSLog(@"没网络连接");
        [MBProgressHUD showInfo:@"没网络连接" toView:self.view];
    }
}


@end
