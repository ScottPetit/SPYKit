//
//  NSString+SPYKit.h
//  SPYKit
//
//  Created by Scott Petit on 12/22/13.
//  Copyright (c) 2013 Scott Petit. All rights reserved.
//

@interface NSString (SPYKit)

/**
 Returns a string of the MD5 digest of the receiver.
 
 @return The string of the MD5 digest of the receiver.
 */
- (NSString *)spy_MD5String;

/**
 Checks the receiever if it contains the given string.
 
 @param string The string to check against for the receiver.
 @return A BOOL indicating whether the reciever contains the given string.
 */
- (BOOL)spy_containsString:(NSString *)string;

- (BOOL)spy_containsString:(NSString *)string options:(NSStringCompareOptions)options;

/**
 @return A capitalized string that maintains the case of the receiver's other letters. (i.e. testString becomes TestString).  This differs from Apple's capitalizedString in that 'testString' would become 'TestString'.
 */
- (NSString *)spy_capitalizedString;

- (NSRange)spy_range;

@end
