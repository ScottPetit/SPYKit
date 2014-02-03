//
//  UIView+SPYKit.h
//  SPYKit
//
//  Created by Scott Petit on 12/22/13.
//  Copyright (c) 2013 Scott Petit. All rights reserved.
//

#import "SPYBlocks.h"

@interface UIView (SPYKit)

/**
 Fade out the receiver in 0.3 seconds.
 */
- (void)spy_fadeOut;

/**
 Fades out the receiver in 0.3 seconds with an optional completion block.
 */
- (void)spy_fadeOutWithCompletion:(SPYCompletionBlock)completionBlock;

/**
 Fades out the receiver in 0.3 seconds and removes it from it's super view.
 */
- (void)spy_fadeOutAndRemove;

/**
 Fade in the receiver in 0.3 seconds.
 */
- (void)spy_fadeIn;

/**
 Fades in the receiver in 0.3 seconds with an optional completion block.
 */
- (void)spy_fadeInWithCompletion:(SPYCompletionBlock)completionBlock;

/**
 Sets the corner radius of the receivers layer and masks to bounds
 */
- (void)spy_setCornerRadius:(CGFloat)radius;

/**
 Sets the corner radius of the receivers layer and masks to bounds.
 */
- (void)spy_makeCircular;

- (void)spy_constrainEdgesToSuperview;

- (void)spy_constrainEdgesToSuperviewWithInsets:(UIEdgeInsets)edgeInsets;

+ (UINib *)nib;

- (CGPoint)spy_boundsCenter;

@end
