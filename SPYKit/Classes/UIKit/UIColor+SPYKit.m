//
//  UIColor+SPYKit.m
//  SPYKit
//
//  Created by Scott Petit on 12/22/13.
//  Copyright (c) 2013 Scott Petit. All rights reserved.
//

#import "UIColor+SPYKit.h"

@implementation UIColor (SPYKit)

- (CGFloat)spy_red
{
    CGColorRef color = self.CGColor;
    if (CGColorSpaceGetModel(CGColorGetColorSpace(color)) != kCGColorSpaceModelRGB)
    {
        return -1.0f;
    }
    
    CGFloat const *components = CGColorGetComponents(color);
    return components[0];
}

- (CGFloat)spy_green
{
    CGColorRef color = self.CGColor;
    if (CGColorSpaceGetModel(CGColorGetColorSpace(color)) != kCGColorSpaceModelRGB)
    {
        return -1.0f;
    }
    
    CGFloat const *components = CGColorGetComponents(color);
    return components[1];
}

- (CGFloat)spy_blue
{
    CGColorRef color = self.CGColor;
    if (CGColorSpaceGetModel(CGColorGetColorSpace(color)) != kCGColorSpaceModelRGB)
    {
        return -1.0f;
    }
    
    CGFloat const *components = CGColorGetComponents(color);
    return components[2];
}

- (CGFloat)spy_alpha
{
    return CGColorGetAlpha(self.CGColor);
}

+ (instancetype)spy_colorFromString:(NSString *)colorString
{
    if (!colorString.length)
    {
        return nil;
    }
    
    NSString *lowercaseColor = [colorString lowercaseString];
    NSString *color = [lowercaseColor stringByAppendingString:@"Color"];
    
    SEL colorSelector = NSSelectorFromString(color);
    
    if ([UIColor respondsToSelector:colorSelector])
    {
        return [UIColor performSelector:colorSelector];
    }
    else
    {
        return nil;
    }
}

+ (instancetype)spy_randomColor
{
    CGFloat red =  (CGFloat)(arc4random() % 256);
    CGFloat blue = (CGFloat)(arc4random() % 256);
    CGFloat green = (CGFloat)(arc4random() % 256);
    return SPY_RGB(red, green, blue);
}

#pragma mark - Flat Colors

+ (UIColor *)spy_flatTurquoiseColor
{
    return SPY_RGB(26, 188, 156);
}

+ (UIColor *)spy_flatGreenSeaColor
{
    return SPY_RGB(22, 160, 133);
}

+ (UIColor *)spy_flatEmerlandColor
{
    return SPY_RGB(46, 204, 113);
}

+ (UIColor *)spy_flatNephritisColor
{
    return SPY_RGB(39, 174, 96);
}

+ (UIColor *)spy_flatPeterRiverColor
{
    return SPY_RGB(52, 152, 219);
}

+ (UIColor *)spy_flatBelizeHoleColor
{
    return SPY_RGB(41, 128, 185);
}

+ (UIColor *)spy_flatAmethystColor
{
    return SPY_RGB(155, 89, 182);
}

+ (UIColor *)spy_flatWisteriaColor
{
    return SPY_RGB(142, 68, 173);
}

+ (UIColor *)spy_flatWetAsphaltColor
{
    return SPY_RGB(52, 73, 94);
}

+ (UIColor *)spy_flatMidnightBlueColor
{
    return SPY_RGB(44, 62, 80);
}

+ (UIColor *)spy_flatSunflowerColor
{
    return SPY_RGB(241, 196, 15);
}

+ (UIColor *)spy_flatOrangeColor
{
    return SPY_RGB(243, 156, 18);
}

+ (UIColor *)spy_flatCarrotColor
{
    return SPY_RGB(230, 126, 34);
}

+ (UIColor *)spy_flatPumpkinColor
{
    return SPY_RGB(211, 84, 0);
}

+ (UIColor *)spy_flatAlizarinColor
{
    return SPY_RGB(231, 76, 60);
}

+ (UIColor *)spy_flatPomegranateColor
{
    return SPY_RGB(192, 57, 43);
}

+ (UIColor *)spy_flatCloudsColor
{
    return SPY_RGB(236, 240, 241);
}

+ (UIColor *)spy_flatSilverColor
{
    return SPY_RGB(189, 195, 199);
}

+ (UIColor *)spy_flatConcreteColor
{
    return SPY_RGB(149, 165, 166);
}

+ (UIColor *)spy_flatAsbestosColor
{
    return SPY_RGB(127, 140, 141);
}

@end
