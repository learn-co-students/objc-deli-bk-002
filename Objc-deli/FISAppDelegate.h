//
//  FISAppDelegate.h
//  Objc-deli
//
//  Created by Al Tyus on 2/3/14.
//  Copyright (c) 2014 Flatiron School. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

- (NSString *) stringWithDeliLine:(NSArray *)deliLine;
- (void) addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine;
- (NSString *) serveNextCustomerInDeliLine:(NSMutableArray *)deliLine;

@end
