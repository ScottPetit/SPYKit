//
//  UIView+SPYKit.m
//  SPYKit
//
//  Created by Scott Petit on 12/22/13.
//  Copyright (c) 2013 Scott Petit. All rights reserved.
//

#import "UIView+SPYKit.h"
#import "SPYDefines.h"

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

- (void)spy_constrainEdgesToSuperview
{
    [self spy_constrainEdgesToSuperviewWithInsets:UIEdgeInsetsZero];
}

- (void)spy_constrainEdgesToSuperviewWithInsets:(UIEdgeInsets)insets
{
    UIView *superview = self.superview;
    
    SPYParameterAssert(superview);
    
    NSLayoutConstraint *topConstraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:superview attribute:NSLayoutAttributeTop multiplier:1.0 constant:insets.top];
    NSLayoutConstraint *trailingConstraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:superview attribute:NSLayoutAttributeTrailing multiplier:1.0 constant:insets.right];
    NSLayoutConstraint *bottomConstraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:superview attribute:NSLayoutAttributeBottom multiplier:1.0 constant:insets.bottom];
    NSLayoutConstraint *leadingConstraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:superview attribute:NSLayoutAttributeLeading multiplier:1.0 constant:insets.left];
    
    [self.superview addConstraints:@[topConstraint, bottomConstraint, leadingConstraint, trailingConstraint]];
}

+ (UINib *)nib
{
    return [UINib nibWithNibName:NSStringFromClass([self class]) bundle:nil];
}

- (CGPoint)spy_boundsCenter
{
    return CGPointMake(CGRectGetMidX(self.bounds), CGRectGetMidY(self.bounds));
}

@end
