//
//  NSDictionaryTests.m
//  SPYKit
//
//  Created by Scott Petit on 12/22/13.
//  Copyright (c) 2013 Scott Petit. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <Kiwi/Kiwi.h>
#import "NSDictionary+SPYKit.h"

SPEC_BEGIN(NSDictionaryTests)

describe(@"NSDictionary + SPYKit", ^{
    __block NSDictionary *_dictionary;
    beforeEach(^{
        _dictionary = @{@"null": [NSNull null]};
    });
    
    it(@"returns safe objects", ^{
        id nullObject = _dictionary[@"null"];
        id safeObject = [_dictionary spy_safeObjectForKey:@"null"];
        
        [[nullObject shouldNot] beNil];
        [[safeObject should] beNil];
    });
    
    it(@"returns safe copies", ^{
        id nullObject = _dictionary[@"null"];
        id safeObject = [_dictionary spy_safeCopyForKey:@"null"];
        
        [[nullObject shouldNot] beNil];
        [[safeObject should] beNil];
    });
});

SPEC_END
