//
//  SPYTextView.m
//  SPYKit
//
//  Created by Scott Petit on 12/29/13.
//  Copyright (c) 2013 Scott Petit. All rights reserved.
//

#import "SPYTextView.h"

@interface SPYTextView ()

- (void)SPYTextViewCommonInit;
- (void)textChangedNotification:(NSNotification *)notification;

@end

@implementation SPYTextView

#pragma mark - Init/Dealloc

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self)
    {
        [self SPYTextViewCommonInit];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self SPYTextViewCommonInit];
    }
    return self;
}

- (void)SPYTextViewCommonInit
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textChangedNotification:) name:UITextViewTextDidChangeNotification object:self];
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UITextViewTextDidChangeNotification object:self];
}

#pragma mark - Properties

- (void)setText:(NSString *)string
{
    [super setText:string];
    [self setNeedsDisplay];
}

- (void)insertText:(NSString *)string
{
    [super insertText:string];
    [self setNeedsDisplay];
}

- (void)setAttributedText:(NSAttributedString *)attributedText
{
    [super setAttributedText:attributedText];
    [self setNeedsDisplay];
}

- (void)setPlaceholder:(NSString *)string
{
    if ([string isEqualToString:self.attributedPlaceholder.string])
    {
        return;
    }
    
    NSMutableDictionary *attributes = [[NSMutableDictionary alloc] init];
    attributes[NSFontAttributeName] = self.font;
    attributes[NSForegroundColorAttributeName] = [UIColor colorWithWhite:0.702f alpha:1.0f];
        
    if (self.textAlignment != NSTextAlignmentLeft)
    {
            NSMutableParagraphStyle *paragraph = [[NSMutableParagraphStyle alloc] init];
            paragraph.alignment = self.textAlignment;
            attributes[NSParagraphStyleAttributeName] = paragraph;
    }
    
    self.attributedPlaceholder = [[NSAttributedString alloc] initWithString:string attributes:attributes];
}

- (NSString *)placeholder
{
    return self.attributedPlaceholder.string;
}

- (void)setAttributedPlaceholder:(NSAttributedString *)attributedPlaceholder
{
    if ([_attributedPlaceholder isEqualToAttributedString:attributedPlaceholder])
    {
        return;
    }
    
    _attributedPlaceholder = attributedPlaceholder;
    
    [self setNeedsDisplay];
}

- (void)setContentInset:(UIEdgeInsets)contentInset
{
    [super setContentInset:contentInset];
    [self setNeedsDisplay];
}

- (void)setFont:(UIFont *)font
{
    [super setFont:font];
    [self setNeedsDisplay];
}

- (void)setTextAlignment:(NSTextAlignment)textAlignment
{
    [super setTextAlignment:textAlignment];
    [self setNeedsDisplay];
}

#pragma mark - UIView

- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    
    // Draw placeholder if necessary
    if (self.text.length == 0 && self.attributedPlaceholder)
    {
        CGRect placeholderRect = [self placeholderRectForBounds:self.bounds];
        [self.attributedPlaceholder drawInRect:placeholderRect];
    }
}

#pragma mark - Public

- (CGRect)placeholderRectForBounds:(CGRect)bounds
{
    CGRect rect = UIEdgeInsetsInsetRect(bounds, self.contentInset);
    
    if ([self respondsToSelector:@selector(textContainer)])
    {
        rect = UIEdgeInsetsInsetRect(rect, self.textContainerInset);
        CGFloat padding = self.textContainer.lineFragmentPadding;
        rect.origin.x += padding;
        rect.size.width -= padding * 2.0f;
    }
    else
    {
        if (self.contentInset.left == 0.0f)
        {
            rect.origin.x += 8.0f;
        }
        rect.origin.y += 8.0f;
    }
    
    return rect;
}

#pragma mark - Private

- (void)textChangedNotification:(NSNotification *)notification
{
    [self setNeedsDisplay];
}

@end
