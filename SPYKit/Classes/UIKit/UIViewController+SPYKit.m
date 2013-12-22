//
//  UIViewController+SPYKit.m
//  SPYKit
//
//  Created by Scott Petit on 12/22/13.
//  Copyright (c) 2013 Scott Petit. All rights reserved.
//

#import "UIViewController+SPYKit.h"

@implementation UIViewController (SPYKit)

- (void)spy_handleError:(NSError *)error
{
    [self spy_handleError:error withTitle:NSLocalizedString(@"We encountered a Problem", nil)];
}

- (void)spy_handleError:(NSError *)error withTitle:(NSString *)title
{
    NSParameterAssert(title.length);
    
    if (!title.length)
    {
        return;
    }
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title message:error.localizedFailureReason delegate:nil cancelButtonTitle:NSLocalizedString(@"OK", nil) otherButtonTitles:nil, nil];
    [alertView show];
}

- (void)spy_presentAlertWithTitle:(NSString *)title
{
    [self spy_presentAlertWithTitle:title message:nil];
}

- (void)spy_presentAlertWithTitle:(NSString *)title message:(NSString *)message
{
    NSParameterAssert(title.length);
    
    if (!title.length)
    {
        return;
    }
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title message:message delegate:Nil cancelButtonTitle:NSLocalizedString(@"OK", nil) otherButtonTitles:nil, nil];
    [alertView show];
}


@end
