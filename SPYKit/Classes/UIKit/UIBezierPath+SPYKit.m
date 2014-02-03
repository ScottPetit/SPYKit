//
//  UIBezierPath+SPYKit.m
//  SPYKit
//
//  Created by Scott Petit on 2/3/14.
//  Copyright (c) 2014 Scott Petit. All rights reserved.
//

#import "UIBezierPath+SPYKit.h"

@implementation UIBezierPath (SPYKit)

+ (UIBezierPath *)spy_circleAtLocation:(CGPoint)location radius:(CGFloat)radius
{
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path addArcWithCenter:location
                    radius:radius
                startAngle:0.0
                  endAngle:M_PI * 2.0
                 clockwise:YES];
    
    return path;
}

@end
