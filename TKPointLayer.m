//
//  TKPointLayer.m
//  OnApp
//
//  Created by Suhail Patel on 30/08/2011.
//  Copyright (c) 2011 OnApp. All rights reserved.
//

#import "TKPointLayer.h"

@implementation TKPointLayer

- (void)drawInContext:(CGContextRef)context {
	CGContextSetRGBFillColor(context, 68.0/255.0, 152.0/255.0, 211.0/255.0, 1.0);
	CGContextSetLineWidth(context, 2);
	CGContextFillEllipseInRect(context, CGRectMake(0, 0, 8.0, 8.0));
}

@end
