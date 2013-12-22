//
//  UIView+SPYKit.m
//  SPYKit
//
//  Created by Scott Petit on 12/22/13.
//  Copyright (c) 2013 Scott Petit. All rights reserved.
//

#import "UIView+SPYKit.h"

static NSInteger const kAnimationDuration = 0.3f;

@implementation UIView (SPYKit)

- (void)spy_fadeOut
{
    [self spy_fadeOutWithCompletion:nil];
}

- (void)spy_fadeOutWithCompletion:(SPYCompletionBlock)completionBlock
{
    [UIView animateWithDuration:kAnimationDuration animations:^{
        self.alpha = 0.0;
    } completion:completionBlock];
}

- (void)spy_fadeOutAndRemove
{
    [self spy_fadeOutWithCompletion:^(BOOL finished) {
        [self removeFromSuperview];
    }];
}

- (void)spy_fadeIn
{
    [self spy_fadeInWithCompletion:nil];
}

- (void)spy_fadeInWithCompletion:(SPYCompletionBlock)completionBlock
{
    [UIView animateWithDuration:kAnimationDuration animations:^{
        self.alpha = 1.0;
    } completion:completionBlock];
}

- (void)spy_setCornerRadius:(CGFloat)radius
{
    [self.layer setCornerRadius:radius];
    self.layer.masksToBounds = YES;
}

- (void)spy_makeCircular
{
    [self spy_setCornerRadius:(CGRectGetWidth(self.frame) / 2)];
}


@end
