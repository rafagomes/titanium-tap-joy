/**
 * Your Copyright Here
 *
 * Appcelerator Titanium is Copyright (c) 2009-2010 by Appcelerator, Inc.
 * and licensed under the Apache Public License (version 2)
 */
#import "TiTapjoyModule.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"
#import <Tapjoy/Tapjoy.h>

@implementation TiTapjoyModule

#pragma mark Internal

// this is generated for your module, please do not change it
-(id)moduleGUID
{
	return @"945dd872-31e4-47ae-aac3-05d17ad3b679";
}

// this is generated for your module, please do not change it
-(NSString*)moduleId
{
	return @"ti.tapjoy";
}

#pragma mark Lifecycle

-(void)startup
{
	// this method is called when the module is first loaded
	// you *must* call the superclass
	[super startup];
    
     // If you are not using Tapjoy Managed currency, you would set your own user ID here.
     //TJC_OPTION_USER_ID : @"A_UNIQUE_USER_ID"
	
	NSLog(@"[INFO] %@ loaded",self);
}

-(void)shutdown:(id)sender
{
	// this method is called when the module is being unloaded
	// typically this is during shutdown. make sure you don't do too
	// much processing here or the app will be quit forceably
	
	// you *must* call the superclass
	[super shutdown:sender];
}

#pragma mark Cleanup 

-(void)dealloc
{
	// release any resources that have been retained by the module
	[super dealloc];
}

#pragma mark Internal Memory Management

-(void)didReceiveMemoryWarning:(NSNotification*)notification
{
	// optionally release any resources that can be dynamically
	// reloaded once memory is available - such as caches
	[super didReceiveMemoryWarning:notification];
}

#pragma mark Listener Notifications

-(void)_listenerAdded:(NSString *)type count:(int)count
{
	if (count == 1 && [type isEqualToString:@"my_event"])
	{
		// the first (of potentially many) listener is being added 
		// for event named 'my_event'
	}
}

-(void)_listenerRemoved:(NSString *)type count:(int)count
{
	if (count == 0 && [type isEqualToString:@"my_event"])
	{
		// the last listener called for event named 'my_event' has
		// been removed, we can optionally clean up any resources
		// since no body is listening at this point for that event
	}
}

#pragma Public APIs

- (void)requestTapjoyConnect:(id)args
{
    NSString * appId;
    NSString * secretKey;
    
    ENSURE_ARG_AT_INDEX(appId, args, 0, NSString)
    ENSURE_ARG_AT_INDEX(secretKey, args, 1, NSString)
    
    [Tapjoy requestTapjoyConnect:appId
                       secretKey:secretKey
                         options:@{TJC_OPTION_ENABLE_LOGGING: @(YES) }
     ];
}

@end
