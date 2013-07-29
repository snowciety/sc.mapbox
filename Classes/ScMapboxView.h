/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2013 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */
#import "TiUIView.h"
#import "Mapbox/Mapbox.h"

@interface ScMapboxView : TiUIView {
    NSString *host;
    float zoom;
    float minZoom;
    float maxZoom;
    float centerLat;
    float centerLng;
    
    RMMapView *mapView;
}

-(void)createView;
-(RMPointAnnotation *)createMarker:(id)args;

@end
