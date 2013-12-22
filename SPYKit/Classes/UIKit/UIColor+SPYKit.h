//
//  UIColor+SPYKit.h
//  SPYKit
//
//  Created by Scott Petit on 12/22/13.
//  Copyright (c) 2013 Scott Petit. All rights reserved.
//

#define SPY_RGB(r, g, b) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1]

@interface UIColor (SPYKit)

/**
 The receiver's red component value. (read-only)
 
 The value of this property is a floating-point number in the range `0.0` to `1.0`. `-1.0` is returned if the color is
 not in the RGB colorspace.
 */
- (CGFloat)spy_red;

/**
 The receiver's green component value. (read-only)
 
 The value of this property is a floating-point number in the range `0.0` to `1.0`. `-1.0` is returned if the color is
 not in the RGB colorspace.
 */
- (CGFloat)spy_green;

/**
 The receiver's blue component value. (read-only)
 
 The value of this property is a floating-point number in the range `0.0` to `1.0`. `-1.0` is returned if the color is
 not in the RGB colorspace.
 */
- (CGFloat)spy_blue;

/**
 The receiver's alpha value. (read-only)
 
 The value of this property is a floating-point number in the range `0.0` to `1.0`, where `0.0` represents totally
 transparent and `1.0` represents totally opaque.
 */
- (CGFloat)spy_alpha;

/**
 Returns one of the default Objective-C colors when given an appropriate string.
 
 @param A string that you want a color for (e.g.) red, GREEN, BlUe
 @return A UIColor or nil from the given string.
 */
+ (instancetype)spy_colorFromString:(NSString *)colorString;

+ (instancetype)spy_randomColor;

/**
 A collection of Flat colors based on http://flatuicolors.com/
 */
+ (UIColor *)spy_flatTurquoiseColor;
+ (UIColor *)spy_flatGreenSeaColor;
+ (UIColor *)spy_flatEmerlandColor;
+ (UIColor *)spy_flatNephritisColor;
+ (UIColor *)spy_flatPeterRiverColor;
+ (UIColor *)spy_flatBelizeHoleColor;
+ (UIColor *)spy_flatAmethystColor;
+ (UIColor *)spy_flatWisteriaColor;
+ (UIColor *)spy_flatWetAsphaltColor;
+ (UIColor *)spy_flatMidnightBlueColor;
+ (UIColor *)spy_flatSunflowerColor;
+ (UIColor *)spy_flatOrangeColor;
+ (UIColor *)spy_flatCarrotColor;
+ (UIColor *)spy_flatPumpkinColor;
+ (UIColor *)spy_flatAlizarinColor;
+ (UIColor *)spy_flatPomegranateColor;
+ (UIColor *)spy_flatCloudsColor;
+ (UIColor *)spy_flatSilverColor;
+ (UIColor *)spy_flatConcreteColor;
+ (UIColor *)spy_flatAsbestosColor;

@end
