//  DCViewController.h
//  Created by Vadim Krushinskiy on 14/11/14.
//  Copyright (c) 2014. All rights reserved.

#import <UIKit/UIKit.h>

@interface DCViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> {
    UIViewController *viewController; }

@property (copy, nonatomic) NSArray *countries;
@property (copy, nonatomic) NSArray *countriesContinent;
@property (copy, nonatomic) NSArray *flags;
@end
