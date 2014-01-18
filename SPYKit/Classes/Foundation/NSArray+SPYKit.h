//
//  NSArray+SPYKit.h
//  SPYKit
//
//  Created by Scott Petit on 1/12/14.
//  Copyright (c) 2014 Scott Petit. All rights reserved.
//

@interface NSArray (SPYKit)

- (NSUInteger)spy_indexOfString:(NSString *)string withOptions:(NSStringCompareOptions)options;

- (id)spy_randomObject;

@end
