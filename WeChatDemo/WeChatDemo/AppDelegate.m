//
//  AppDelegate.m
//  WeChatDemo
//
//  Created by LiGuicai on 15/7/16.
//  Copyright (c) 2015年 guicai.li.china@gmail.com. All rights reserved.
//

#import "AppDelegate.h"

// 设置代理
@interface AppDelegate ()<WXApiDelegate>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //向微信注册
#warning 填写自己的AppID
    [WXApi registerApp:@""];
    
    return YES;
}

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
    
    return  [WXApi handleOpenURL:url delegate:self];
}

#pragma mark - WXApiDelegate

// onReq是微信终端向第三方程序发起请求，要求第三方程序响应。第三方程序响应完后必须调用sendRsp返回。在调用sendRsp返回时，会切回到微信终端程序界面。

- (void) onReq:(BaseReq*)req {
    //TODO:发送到微信
}

// 如果第三方程序向微信发送了sendReq的请求，那么onResp会被回调。sendReq请求调用后，会切到微信终端程序界面。
- (void) onResp:(BaseResp*)resp {
    //TODO:收到微信程序回应
}

@end
