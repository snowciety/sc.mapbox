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
    [(ScMapboxView*)[self view] createView];
}


@end
