//  DCAppDelegate.m
//  Created by Vadim Krushinskiy on 14/11/14.
//  Copyright (c) 2014. All rights reserved.

#import "DCAppDelegate.h"

@implementation DCAppDelegate

@synthesize window; //
@synthesize viewController; //

- (void)applicationDidFinishLaunching:(UIApplication *)application {
    sleep(5);
    viewController = [[UIViewController alloc] init];
    [window addSubview:[viewController view]]; //
    [window makeKeyAndVisible]; //
} 
- (void)dealloc { } //

- (void)applicationWillResignActive:(UIApplication *)application { }

- (void)applicationDidEnterBackground:(UIApplication *)application { }

- (void)applicationWillEnterForeground:(UIApplication *)application { }

- (void)applicationDidBecomeActive:(UIApplication *)application { }

- (void)applicationWillTerminate:(UIApplication *)application { }
@end
