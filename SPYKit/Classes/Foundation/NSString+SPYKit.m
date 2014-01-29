//
//  NSString+SPYKit.m
//  SPYKit
//
//  Created by Scott Petit on 12/22/13.
//  Copyright (c) 2013 Scott Petit. All rights reserved.
//

#import "NSString+SPYKit.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (SPYKit)

- (NSString *)spy_MD5String
{
    const char *cStr = [self UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5( cStr, (CC_LONG)strlen(cStr), result );
    return [NSString stringWithFormat:
            @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
            result[0], result[1], result[2], result[3],
            result[4], result[5], result[6], result[7],
            result[8], result[9], result[10], result[11],
            result[12], result[13], result[14], result[15]
            ];
}

- (BOOL)spy_containsString:(NSString *)string
{
    return [self spy_containsString:string options:0];
}

- (BOOL)spy_containsString:(NSString *)string options:(NSStringCompareOptions)options
{
    return [self rangeOfString:string options:options].length > 0;
}

- (NSString *)spy_capitalizedString
{
    return [self stringByReplacingCharactersInRange:NSMakeRange(0, 1) withString:[[self substringToIndex:1] capitalizedString]];
}

- (NSRange)spy_range
{
    return NSMakeRange(0, self.length);
}

@end
