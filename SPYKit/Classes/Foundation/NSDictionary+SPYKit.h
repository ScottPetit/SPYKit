//
//  NSDictionary+SPYKit.h
//  SPYKit
//
//  Created by Scott Petit on 12/22/13.
//  Copyright (c) 2013 Scott Petit. All rights reserved.
//

@interface NSDictionary (SPYKit)

/**
 Returns the object for the specified key or `nil` if the value is `[NSNull null]`.
 
 @param key The key used to look up the object in the receiver.
 
 @return The object for the specified key or `nil` if the value is `[NSNull null]`.
 */
- (id)spy_safeObjectForKey:(id)key;

/**
 Returns a copy of the object for the specified key or `nil` if the value is `[NSNull null]`.
 
 @param key The key used to look up the object in the receiver.
 
 @return A copy of the object for the specified key or `nil` if the value is `[NSNull null]`.
 */
- (id)spy_safeCopyForKey:(id)key;

@end
