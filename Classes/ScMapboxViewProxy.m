/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2013 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "ScMapboxViewProxy.h"
#import "ScMapboxView.h"
#import "TiUtils.h"

@implementation ScMapboxViewProxy

-(void)viewDidAttach
{
    NSString *host = [TiUtils stringValue:[self valueForUndefinedKey:@"host"]];
    CGFloat zoom = [TiUtils floatValue:[self valueForUndefinedKey:@"zoom"] ];
    CGFloat minZoom = [TiUtils floatValue:[self valueForUndefinedKey:@"minZoom"] ];
    CGFloat maxZoom = [TiUtils floatValue:[self valueForUndefinedKey:@"maxZoom"] ];
    NSArray *center = [self valueForUndefinedKey:@"center"];
    
    NSLog(@"[INFO] viewDidAttach");
    NSLog(@"[INFO] host: %@", host);
    NSLog(@"[INFO] zoom: %f", zoom);    
    NSLog(@"[INFO] center %@", center);
    
    [(ScMapboxView*)[self view] initWithHost:host
                                     minZoom: minZoom
                                     maxZoom: maxZoom
                                     center: center
                                     zoom: zoom
     ];
}


@end
