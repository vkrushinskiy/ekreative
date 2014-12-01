//  DCAppDelegate.h
//  Created by Vadim Krushinskiy on 14/11/14.
//  Copyright (c) 2014. All rights reserved.

#import <UIKit/UIKit.h>
#import "DCViewController.h" //

@interface DCAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    UIViewController *viewController; } //

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, retain) UIViewController *viewController; //
@end
