//
//  UIColorTests.m
//  SPYKit
//
//  Created by Scott Petit on 12/22/13.
//  Copyright (c) 2013 Scott Petit. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <Kiwi/Kiwi.h>
#import "UIColor+SPYKit.h"

SPEC_BEGIN(UIColorTests)

describe(@"UIColor + SPYKit", ^{
    
    context(@"Returning Red, Green, Blue and Alpha in RGB", ^{
        CGFloat red = 0.25f;
        CGFloat green = 0.35f;
        CGFloat blue = 0.75f;
        CGFloat alpha = 0.80f;
        
        UIColor *color = [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
     
        it(@"can return red", ^{
            [[theValue([color spy_red]) should] equal:theValue(red)];
        });
        
        it(@"can return green", ^{
            [[theValue([color spy_green]) should] equal:theValue(green)];
        });
        
        it(@"can return blue", ^{
            [[theValue([color spy_blue]) should] equal:theValue(blue)];
        });
        
        it(@"can return alpha", ^{
            [[theValue([color spy_alpha]) should] equal:theValue(alpha)];
        });
    });
    
    context(@"Returning Red Green Blue in non RGB Context", ^{
        UIColor *color = [UIColor colorWithWhite:1.0f alpha:1.0f];
        
        it(@"can return red", ^{
            [[theValue([color spy_red]) should] equal:theValue(-1.0f)];
        });
        
        it(@"can return green", ^{
            [[theValue([color spy_green]) should] equal:theValue(-1.0f)];
        });
        
        it(@"can return blue", ^{
            [[theValue([color spy_blue]) should] equal:theValue(-1.0f)];
        });
    });
    
    context(@"returning colors from strings", ^{
        [[[UIColor spy_colorFromString:@"red"] shouldNot] beNil];
        [[[UIColor spy_colorFromString:@"GrEeN"] shouldNot] beNil];
        [[[UIColor spy_colorFromString:@"BLUE"] shouldNot] beNil];
        
        [[[UIColor spy_colorFromString:nil] should] beNil];
        [[[UIColor spy_colorFromString:@""] should] beNil];
        [[[UIColor spy_colorFromString:@"midnight-blue"] should] beNil];
    });
});

SPEC_END
