/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2013 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */
#import "TiUIView.h"
#import <MapBox/MapBox.h>

@interface ScMapboxView : TiUIView {
    RMMapView *mapview;
}

- (void)initWithHost:(NSString *)host minZoom:(float)minZoom maxZoom:(float)maxZoom center:(NSDictionary*)center zoom:(float)zoom;

@end
