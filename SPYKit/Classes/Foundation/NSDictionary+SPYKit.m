//
//  NSDictionary+SPYKit.m
//  SPYKit
//
//  Created by Scott Petit on 12/22/13.
//  Copyright (c) 2013 Scott Petit. All rights reserved.
//

#import "NSDictionary+SPYKit.h"

@implementation NSDictionary (SPYKit)

- (id)spy_safeObjectForKey:(id)key
{
    id object = self[key];
    if (object == [NSNull null])
    {
        object = nil;
    }
    
    return object;
}

- (id)spy_safeCopyForKey:(id)key
{
    id object = [self[key] copy];
    if (object == [NSNull null])
    {
        object = nil;
    }
    
    return object;
}

@end
