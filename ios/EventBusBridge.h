//
//  EventBusBridge.h
//  RNLazyBundleLoading
//
//  Created by Karan Thakkar on 17/07/2018.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <React/RCTEventEmitter.h>
#import <React/RCTBridgeModule.h>

typedef void (^SubscriptionBlock)(NSDictionary * _Nullable data);

@interface EventBusBridge : RCTEventEmitter <RCTBridgeModule>

- (void)subscribeToEvent:(NSString *)eventName block:(SubscriptionBlock)block;

@end
