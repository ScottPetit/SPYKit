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
    NSUInteger index = 0;
    for (NSString *object in self)
    {
        if ([object isKindOfClass:[NSString class]])
        {
            if ([object compare:string options:options] == NSOrderedSame)
            {
                return index;
            }
        }
        index++;
    }
    return NSNotFound;
}

@end
