//
//  ForwardingProxy.m
//
//  Created by georgy.kasapidi on 05.05.17.
//  Copyright © 2017 N7. All rights reserved.
//

#import "ForwardingProxy.h"

@interface N7ForwardingProxy ()

@property (strong, nonatomic) NSArray *forwarders;

@end

@implementation N7ForwardingProxy

- (instancetype)initWithForwarders:(NSArray *)forwarders {
    _forwarders = [forwarders copy];

    return self;
}

- (BOOL)respondsToSelector:(SEL)aSelector {
    for (id forwarder in self.forwarders) {
        if ([forwarder respondsToSelector:aSelector]) {
            return YES;
        }
    }

    return NO;
}

- (void)forwardInvocation:(NSInvocation *)invocation {
    for (id forwarder in self.forwarders) {
        if ([forwarder respondsToSelector:invocation.selector]) {
            [invocation invokeWithTarget:forwarder];

            return;
        }
    }
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)sel {
    for (id forwarder in self.forwarders) {
        if ([forwarder respondsToSelector:sel]) {
            return [forwarder methodSignatureForSelector:sel];
        }
    }

    return nil;
}

@end
