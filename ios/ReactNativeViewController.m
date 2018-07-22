//
//  ReactNativeViewController.m
//  RNLazyBundleLoading
//
//  Created by Karan Thakkar on 17/07/2018.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import "ReactNativeViewController.h"

#import <React/RCTRootView.h>
#import "ReactNativeHelper.h"

@interface ReactNativeViewController ()

@property NSString *screeName;

@end

@implementation ReactNativeViewController

- (instancetype)initWithScreenName:(NSString *)screeName {
  self = [super init];
  if (self) {
    _screeName = screeName;
  }
  return self;
}

- (void)onLoadComplete {
  [ReactNativeHelper.eventBus sendEventWithName:@"onLoadComplete" body:@{}];
  [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)viewDidLoad {
  [ReactNativeHelper.eventBus subscribeToEvent:@"lazyLoad" block:^(NSDictionary * _Nullable data) {
    NSString *screenName = [data valueForKey:@"screen_name"];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(onLoadComplete)
                                                 name:RCTJavaScriptDidLoadNotification
                                               object:nil];
    [ReactNativeHelper lazyLoad:screenName];
  }];
}

- (void)loadView {
  RCTRootView *rootView = [ReactNativeHelper getRootViewWithModuleName:self.screeName
                                                     initialProperties:@{}];
  self.view = rootView;
}

@end
