//
//  ViewController.m
//  Safemobile-IOS-POC
//
//  Created by Đặng Văn Hùng on 2022-01-09.
//

#import "SafeMobileController.h"
#import <React/RCTBridge.h>
#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>
#import <React/RCTLog.h>

@interface SafeMobileController ()

@end

@implementation SafeMobileController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIViewController *controller = [[UIViewController alloc] init];
    //    NSURL * url = [[NSBundle mainBundle] URLForResource:@"main" withExtension: @"jsbundle"];
    //
    //
    //
    //    RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:url moduleName:@"RNProject" initialProperties:nil launchOptions:nil];
        RCTBridge *bridge = [[RCTBridge alloc] initWithDelegate:self launchOptions:nil];
        RCTRootView *rootView = [[RCTRootView alloc] initWithBridge:bridge
                                                             moduleName:@"RNProject"
                                                      initialProperties:nil];
        self.view = rootView;
}



- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge
{
//#if DEBUG
//  return [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index" fallbackResource:nil];
//#else
    return [[NSBundle bundleForClass:[SafeMobileController class]] URLForResource:@"main" withExtension:@"jsbundle"];
//#endif
}


@end
