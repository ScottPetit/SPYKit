//
//  SPYUtility.m
//  SPYKit
//
//  Created by Scott Petit on 12/28/13.
//  Copyright (c) 2013 Scott Petit. All rights reserved.
//

#import "SPYUtility.h"

@implementation SPYUtility

#pragma mark - Idiom

+ (BOOL)isPad
{
    return [[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad;
}

+ (BOOL)isPhone
{
    return [[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone;
}

#pragma mark - Retina

+ (BOOL)isRetina
{
    return [[UIScreen mainScreen] scale] >= 2.0;
}

+ (CGFloat)scale
{
    return [[UIScreen mainScreen] scale];
}

#pragma mark - Orientation

+ (BOOL)isPortrait
{
    return UIDeviceOrientationIsPortrait([[UIDevice currentDevice] orientation]);
}

+ (BOOL)isLandscape
{
    return UIDeviceOrientationIsLandscape([[UIDevice currentDevice] orientation]);
}

+ (UIInterfaceOrientation)currentOrientation
{
    return [[UIApplication sharedApplication] statusBarOrientation];
}

#pragma mark - Status Bar

+ (BOOL)isStatusBarVisible
{
    return ![UIApplication sharedApplication].statusBarHidden;
}

+ (CGRect)statusBarFrame
{
    return [UIApplication sharedApplication].statusBarFrame;
}

#pragma mark - Screen

+ (CGFloat)screenHeight
{
    return CGRectGetHeight([UIScreen mainScreen].bounds);
}

+ (CGFloat)screenWidth
{
    return CGRectGetWidth([UIScreen mainScreen].bounds);
}

+ (CGFloat)actualScreenHeight
{
    return [SPYUtility isPortrait] ? [SPYUtility screenHeight] : [SPYUtility screenWidth];
}

+ (CGFloat)actualScreenWidth
{
    return [SPYUtility isPortrait] ? [SPYUtility screenWidth] : [SPYUtility screenHeight];
}

#pragma mark - Directories

+ (NSString *)applicationDocumentsDirectoryPath
{
    return [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,
                                                NSUserDomainMask,
                                                YES) lastObject];
}
+ (NSString *)applicationDocumentsDirectoryPathAppended:(NSString *)pathToAppend
{
    return [[SPYUtility applicationDocumentsDirectoryPath] stringByAppendingPathComponent:pathToAppend];
}

@end
