//
//  TKLineLayer.h
//  OnApp
//
//  Created by Suhail Patel on 30/08/2011.
//  Copyright (c) 2011 OnApp. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

@interface TKLineLayer : CALayer {
    NSArray *data;
    NSArray *yCoordinates;
    int pointDistance;
    int scrollMargins;
}

@property (nonatomic, strong) NSArray *data;
@property (nonatomic, strong) NSArray *yCoordinates;
@property (nonatomic, assign) int pointDistance;
@property (nonatomic, assign) int scrollMargins;

@end
