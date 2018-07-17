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
  if (self)
  {
    _screeName = screeName;
  }
  return self;
}

- (void)loadView {
  RCTRootView *rootView = [ReactNativeHelper getRootViewWithModuleName:self.screeName
                                                     initialProperties:@{}];
  self.view = rootView;
}

@end
