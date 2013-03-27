//
//  FastCell.m
//  -
//
//  Created by Ilya Ilin on 3/27/13.
//  Copyright (c) 2013 -. All rights reserved.
//

#import "FastCell.h"

@interface ContentView : UIView
@end

@implementation ContentView

- (id)initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {
    }
    return self;
}

- (void)drawRect:(CGRect)r
{
	[(FastCell*)[self superview] drawContentView:r];
}

@end

@implementation FastCell

@synthesize backView;
@synthesize contentView;

- (id)initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {
        CGRect b = [self bounds];
        backView = [[UIView alloc] initWithFrame:b];
        backView.opaque = YES;
        [self addSubview:backView];
        
	contentView = [[ContentView alloc] initWithFrame:b];
	contentView.opaque = YES;
	[self addSubview:contentView];
    }
    return self;
}

- (void)dealloc {
	[backView removeFromSuperview];
	[backView release];
    
	[contentView removeFromSuperview];
	[contentView release];
	[super dealloc];
}

- (void)setFrame:(CGRect)f {
	[super setFrame:f];
	CGRect b = [self bounds];
	
    [backView setFrame:b];
	[contentView setFrame:b];
    [self setNeedsDisplay];
}

- (void)setNeedsDisplay {
	[super setNeedsDisplay];
    [backView setNeedsDisplay];
	[contentView setNeedsDisplay];
}

- (void)drawContentView:(CGRect)r {
	// subclasses should implement this
}

@end
