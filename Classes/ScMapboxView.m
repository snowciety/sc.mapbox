/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2013 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "ScMapboxView.h"
#import "Mapbox/Mapbox.h"
#import <Mapbox/RMOpenStreetMapSource.h>


@implementation ScMapboxView

-(void)createView {
	NSLog(@"[Mapbox] createView");
    
    NSLog(@"[Mapbox] %@", host);
    
    RMGenericMapSource *snowcietySource = [[RMGenericMapSource alloc] initWithHost:host tileCacheKey:@"snowcietyTiles" minZoom:minZoom maxZoom:maxZoom];
    
    mapView = [[RMMapView alloc] initWithFrame:[self frame] andTilesource:snowcietySource];
    mapView.zoom = zoom;
    
    mapView.centerCoordinate = CLLocationCoordinate2DMake(centerLat, centerLng);
    
    mapView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    
    [self addSubview:mapView];
}

-(RMPointAnnotation *)createMarker:(id)args {
    NSLog(@"[Mapbox] createMarker");
    
    RMPointAnnotation *annotation = [RMPointAnnotation annotationWithMapView:mapView coordinate:mapView.centerCoordinate andTitle:@"Hello, Erik!"];
    
    [mapView addAnnotation:annotation];
    
    return annotation;
}

-(void)frameSizeChanged:(CGRect)frame bounds:(CGRect)bounds
{
    if (mapView!=nil)
    {
        [TiUtils setView:mapView positionRect:bounds];
    }
}

-(void)setHost_:(id)_host {
    host = _host;
}

-(void)setCenterLatLng_:(id)_center {
    centerLat = [TiUtils floatValue:[_center objectAtIndex:0]];
    centerLng = [TiUtils floatValue:[_center objectAtIndex:1]];
}

-(void)setMinZoom_:(id)_minZoom {
    minZoom = [TiUtils floatValue:_minZoom];
}

-(void)setMaxZoom_:(id)_maxZoom {
    maxZoom = [TiUtils floatValue:_maxZoom];
}

-(void)setZoom_:(id)_zoom {
    zoom = [TiUtils floatValue:_zoom];
}

@end
