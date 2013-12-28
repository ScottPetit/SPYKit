//
//  SPYUtility.h
//  SPYKit
//
//  Created by Scott Petit on 12/28/13.
//  Copyright (c) 2013 Scott Petit. All rights reserved.
//

@interface SPYUtility : NSObject

//Device Idiom
+ (BOOL)isPad;
+ (BOOL)isPhone;

//Retina
+ (BOOL)isRetina;
+ (CGFloat)scale;

//Orientation
+ (BOOL)isPortrait;
+ (BOOL)isLandscape;
+ (UIInterfaceOrientation)currentOrientation;

//Status Bar
+ (BOOL)isStatusBarVisible;
+ (CGRect)statusBarFrame;

//Screen
+ (CGFloat)screenHeight;
+ (CGFloat)screenWidth;

//Actual returns the screen height and width relative to the current orientation
+ (CGFloat)actualScreenHeight;
+ (CGFloat)actualScreenWidth;

//Directory
+ (NSString *)applicationDocumentsDirectoryPath;
+ (NSString *)applicationDocumentsDirectoryPathAppended:(NSString *)pathToAppend;

@end
