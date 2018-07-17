/**
 * Copyright (c) 2015-present, Facebook, Inc.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import "AppDelegate.h"
#import "ReactNativeViewController.h"
#import "ReactNativeHelper.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  // Override point for customization after application launch.
  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  ReactNativeViewController *vc = [[ReactNativeViewController alloc] initWithScreenName:@"ScreenA"];
  self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:vc];
  [self.window makeKeyAndVisible];
  [ReactNativeHelper createBridge];
  return YES;
}

@end
