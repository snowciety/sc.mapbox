/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2013 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "ScMapboxViewProxy.h"
#import "ScMapboxView.h"
#import "TiUtils.h"
#import "Mapbox/MapBox.h"

@implementation ScMapboxViewProxy

-(void)viewDidAttach {
    [super viewDidAttach];
    
    NSLog(@"[Proxy] viewDidAttach");
    [(ScMapboxView *)[self view] createView];
}

-(void)createMarker:(id)args {
    NSLog(@"[Proxy] createMarker");
    NSLog(@"[Proxy] Args: %@", [args valueForKey:@"latlng"]);
    
    [self makeViewPerformSelector:@selector(createMarker:) withObject:args createIfNeeded:NO waitUntilDone:NO];
    
//    [(ScMapboxView *)[self view] createMarker:args];
}


@end
