//
//  ForwardingProxy.h
//
//  Created by georgy.kasapidi on 05.05.17.
//  Copyright © 2017 N7. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface N7ForwardingProxy : NSProxy

- (instancetype)initWithForwarders:(NSArray *)forwarders;

@end
