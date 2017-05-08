//
//  N7UserActivityManager.m
//  ForwardingProxy
//
//  Created by georgy.kasapidi on 05.05.17.
//  Copyright © 2017 N7. All rights reserved.
//

#import "N7UserActivityManager.h"

@implementation N7UserActivityManager

- (BOOL)application:(UIApplication *)application willContinueUserActivityWithType:(NSString *)userActivityType {
    return NO;
}

- (BOOL)application:(UIApplication *)application continueUserActivity:(NSUserActivity *)userActivity restorationHandler:(void (^)(NSArray * _Nullable))restorationHandler {
    return NO;
}

@end
