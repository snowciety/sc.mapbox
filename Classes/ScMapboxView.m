/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2013 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "ScMapboxView.h"
#import "TiUtils.h"
#import <MapBox/MapBox.h>
#import <Mapbox/RMGenericMapSource.h>

@implementation ScMapboxView

-(void)dealloc
{
    RELEASE_TO_NIL(mapview);
    
    [super dealloc];
}

- (void)initWithHost:(NSString *)host minZoom:(float)minZoom maxZoom:(float)maxZoom center:(NSDictionary*)center zoom:(float)zoom;
{
    NSLog(@"[INFO] Loading map");
    
//    RMMapBoxSource *onlineSource = [[RMMapBoxSource alloc] initWithMapID:@"timanrebel.map-xpm5jx30"];
    RMGenericMapSource *snowcietySource = [[RMGenericMapSource alloc] initWithHost:host tileCacheKey:@"snowciety" minZoom:minZoom maxZoom:maxZoom];
        
    mapview = [[RMMapView alloc] initWithFrame:CGRectMake(0, 0, 164, 174) andTilesource:snowcietySource];
        
    mapview.zoom = zoom;
    mapview.hideAttribution = YES;
    
    mapview.centerCoordinate = CLLocationCoordinate2DMake([[center valueForKey:@"lat"] floatValue], [[center valueForKey:@"lat"] floatValue]);
    
//    mapview.centerCoordinate = CLLocationCoordinate2DMake(47.05992, 11.66954);
    
    mapview.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
        
    [self addSubview:mapview];
    
}

-(void)frameSizeChanged:(CGRect)frame bounds:(CGRect)bounds
{
    if (mapview!=nil)
    {
        [TiUtils setView:mapview positionRect:bounds];
    }
}

@end



