//
//  ReactNativeHelper.m
//  RNLazyBundleLoading
//
//  Created by Karan Thakkar on 17/07/2018.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import "ReactNativeHelper.h"

static RCTBridge *_sharedBridge;

@implementation ReactNativeHelper

+ (UINavigationController *)navigationController {
  return (UINavigationController *)[UIApplication sharedApplication].keyWindow.rootViewController;
}

+ (void)createBridge {
  NSURL *jsCodeLocation = [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index" fallbackResource:nil];
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    _sharedBridge = [[RCTBridge alloc] initWithBundleURL:jsCodeLocation moduleProvider:nil launchOptions:nil];
  });
}

+ (RCTRootView *)getRootViewWithModuleName:(NSString *)moduleName initialProperties:(NSDictionary *)initialProperties {
  RCTRootView *rootView = [[RCTRootView alloc] initWithBridge: _sharedBridge
                                                   moduleName: moduleName
                                            initialProperties: initialProperties];
  return rootView;
}

@end
