//
//  NCIHintView.m
//  Tapestry
//
//  Created by Infoblox Inc on 11/25/13.
//  Copyright (c) 2013 FlowForwarding.Org. All rights reserved.
//  Licensed under the Apache License, Version 2.0 
//  http://www.apache.org/licenses/LICENSE-2.0
//

#import "NCIHintView.h"

@implementation NCIHintView

-(id)initWithText:(NSString *)text andPoint:(CGPoint)point{
    int labelIndent = 20;
    int pointerWidth = 0;
    UIFont *textFont = [UIFont systemFontOfSize:16];
    CGSize labelSize = [text sizeWithFont:textFont constrainedToSize:CGSizeMake(200, 100) lineBreakMode:NSLineBreakByWordWrapping];
    self = [self initWithFrame:CGRectMake(point.x, point.y, labelSize.width + labelIndent*2 + pointerWidth, labelSize.height + labelIndent)];
    if (self) {
        UILabel *textLabel = [[UILabel alloc] initWithFrame:
                              CGRectMake(pointerWidth + labelIndent, labelIndent/2, labelSize.width, labelSize.height)];
        textLabel.numberOfLines = 0;
        textLabel.lineBreakMode = NSLineBreakByWordWrapping;
        textLabel.font = textFont;
        textLabel.textColor = [UIColor whiteColor];
        textLabel.text = text;
        [self addSubview:textLabel];
        textLabel.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
        self.layer.backgroundColor = [UIColor colorWithWhite:0.1 alpha:0.9].CGColor;
        self.layer.cornerRadius = 10.0;
        self.layer.borderColor = [UIColor blackColor].CGColor;
        self.layer.borderWidth = 1.0;
        self.hidden = YES;
        
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(hideHint)
                                                     name:@"freeTap" object:nil];
    }
    return self;
}

- (void)showHint{
    self.hidden = NO;
}

- (void)hideHint{
    self.hidden = YES;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


- (void)drawRect:(CGRect)rect
{
    
}


@end
