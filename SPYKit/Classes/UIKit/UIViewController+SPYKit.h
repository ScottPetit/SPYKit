//
//  UIViewController+SPYKit.h
//  SPYKit
//
//  Created by Scott Petit on 12/22/13.
//  Copyright (c) 2013 Scott Petit. All rights reserved.
//

@interface UIViewController (SPYKit)

- (void)spy_handleError:(NSError *)error;
- (void)spy_handleError:(NSError *)error withTitle:(NSString *)title;

- (void)spy_presentAlertWithTitle:(NSString *)title;
- (void)spy_presentAlertWithTitle:(NSString *)title message:(NSString *)message;

@end
