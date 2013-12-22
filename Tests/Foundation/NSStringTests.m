//
//  NSStringTests.m
//  SPYKit
//
//  Created by Scott Petit on 12/22/13.
//  Copyright (c) 2013 Scott Petit. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <Kiwi/Kiwi.h>
#import "NSString+SPYKit.h"

SPEC_BEGIN(NSStringTests)

describe(@"NSString + SPYKit", ^{
    it(@"can contain strings", ^{
        NSString *testString = @"testString";
        
        [[theValue([testString spy_containsString:@"test"]) should] equal:@YES];
        [[theValue([testString spy_containsString:@"false"]) should] equal:@NO];
    });
    
    it(@"can contain case insensitive strings", ^{
        NSString *testString = @"PM";
        
        [[theValue([testString spy_containsString:@"pm"]) should] equal:@NO];
        [[theValue([testString spy_containsString:@"pm" options:0]) should] equal:@NO];
        [[theValue([testString spy_containsString:@"pm" options:NSCaseInsensitiveSearch]) should] equal:@YES];
    });
    
    it(@"can capitalize strings", ^{
        NSString *testString = @"testString";
        
        [[[testString capitalizedString] should] equal:@"Teststring"];
        [[[testString spy_capitalizedString] should] equal:@"TestString"];
    });
});

SPEC_END
