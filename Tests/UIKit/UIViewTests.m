//
//  UIViewTests.m
//  SPYKit
//
//  Created by Scott Petit on 12/22/13.
//  Copyright (c) 2013 Scott Petit. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <Kiwi/Kiwi.h>
#import "UIView+SPYKit.h"

SPEC_BEGIN(UIViewTests)

describe(@"UIView + SPYKit", ^{
    context(@"fading in", ^{
        UIView *view = [UIView new];
        view.alpha = 0.0f;
        
        [view spy_fadeIn];
        
        [[theValue(view.alpha) shouldEventually] equal:theValue(1.0f)];
    });
    
    context(@"fading out", ^{
        UIView *view = [UIView new];
        view.alpha = 1.0f;
        
        [view spy_fadeOut];
        
        [[theValue(view.alpha) shouldEventually] equal:theValue(0.0f)];
    });
});

SPEC_END