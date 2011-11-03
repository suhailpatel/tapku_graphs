//
//  TKLineLayer.m
//  OnApp
//
//  Created by Suhail Patel on 30/08/2011.
//  Copyright (c) 2011 OnApp. All rights reserved.
//

#import "TKLineLayer.h"
#import "TKGraphView.h"

@implementation TKLineLayer

@synthesize data, yCoordinates;
@synthesize pointDistance, scrollMargins;

- (void)drawInContext:(CGContextRef)context {
    CGContextSaveGState(context);
	
	CGContextSetRGBStrokeColor(context, 68.0/255.0, 152.0/255.0, 211.0/255.0, 1.0);
	CGContextSetLineWidth(context, 3);
	CGContextSetLineJoin(context, kCGLineJoinBevel);
	
	BOOL started = NO;
	
	CGContextMoveToPoint(context, pointDistance, [[yCoordinates objectAtIndex:0] floatValue]);
	
	for(int i = 0; i < [data count] ; i++){
		NSObject <TKGraphViewPoint> *d = [data objectAtIndex:i];
		
		float x = (i+1.0) * pointDistance + scrollMargins;
		
		if([d yValue] != nil){
			float y = [[yCoordinates objectAtIndex:i] floatValue];            
            if(!started){
				CGContextMoveToPoint(context, x, y);
				started = YES;
			}else
				CGContextAddLineToPoint(context, x, y);
		}
	}
	CGContextStrokePath(context);
	
	CGContextRestoreGState(context);
}

@end
