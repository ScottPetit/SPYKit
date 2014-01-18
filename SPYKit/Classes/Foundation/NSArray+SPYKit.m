//
//  NSArray+SPYKit.m
//  SPYKit
//
//  Created by Scott Petit on 1/12/14.
//  Copyright (c) 2014 Scott Petit. All rights reserved.
//

#import "NSArray+SPYKit.h"

@implementation NSArray (SPYKit)

- (NSUInteger)spy_indexOfString:(NSString *)string withOptions:(NSStringCompareOptions)options
{
    return [self indexOfObjectPassingTest:^BOOL(id obj, NSUInteger idx, BOOL *stop) {
        return [obj compare:string options:NSCaseInsensitiveSearch] == NSOrderedSame;
    }];
}

- (id)spy_randomObject
{
    if (![self count])
    {
        return nil;
    }
    
    NSUInteger index = arc4random_uniform((u_int32_t)[self count]);
    return [self objectAtIndex:index];
}

@end
