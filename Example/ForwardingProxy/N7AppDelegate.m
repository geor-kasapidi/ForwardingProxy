//
//  N7AppDelegate.m
//  ForwardingProxy
//
//  Created by georgy.kasapidi on 05.05.17.
//  Copyright © 2017 N7. All rights reserved.
//

#import <ForwardingProxy/ForwardingProxy.h>

#import "N7AppDelegate.h"
#import "N7PushManager.h"
#import "N7UserActivityManager.h"
#import "N7ForceTouchManager.h"

@interface N7AppDelegate ()

@property (strong, nonatomic) N7ForwardingProxy *forwardingProxy;

@end

@implementation N7AppDelegate

- (instancetype)init {
    self = [super init];

    if (self != nil) {
        _forwardingProxy = [[N7ForwardingProxy alloc] initWithForwarders:@[[N7PushManager new],
                                                                           [N7UserActivityManager new],
                                                                           [N7ForceTouchManager new]]];
    }

    return self;
}

#pragma mark -

- (BOOL)respondsToSelector:(SEL)aSelector {
    return [self.forwardingProxy respondsToSelector:aSelector] ? YES : [super respondsToSelector:aSelector];
}

- (id)forwardingTargetForSelector:(SEL)aSelector {
    return [self.forwardingProxy respondsToSelector:aSelector] ? self.forwardingProxy : [super forwardingTargetForSelector:aSelector];
}

#pragma mark -

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    return NO;
}

@end
