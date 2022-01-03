//
//  safemobile_module.m
//  safemobile-module
//
//  Created by Đặng Văn Hùng on 2022-01-03.
//

#import <Foundation/Foundation.h>
#import "safemobile_module.h"
#import <React/RCTBridge.h>
#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>
#import <React/RCTLog.h>

@interface safemobile_module_framework () {
    RCTBridge *bridge;
}

//-(NSString*) doSomethingAPI;
-(UIView *) getView;

@end

@implementation safemobile_module_framework

-(UIView *) getView {
    NSURL * url = [[NSBundle bundleForClass:[safemobile_module_framework class]] URLForResource:@"main" withExtension:@"jsbundle"];
    
    bridge = [[RCTBridge alloc] initWithBundleURL:url moduleProvider:nil launchOptions:nil];
    
    RCTRootView *rootView = [[RCTRootView alloc] initWithBridge:bridge
                                                     moduleName:@"RNProject"
                                              initialProperties:nil];
    
    return rootView;
}


@end
