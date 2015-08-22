//
//  FISAppDelegate.m
//  Objc-deli
//
//  Created by Al Tyus on 2/3/14.
//  Copyright (c) 2014 Flatiron School. All rights reserved.
//

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

- (NSString *) stringWithDeliLine:(NSArray *)deliLine {
    NSString *line = @"The line is:";
    NSMutableString *mLine = [line mutableCopy];
    if ([deliLine count] == 0) {
        return @"The line is currently empty.";

    } else {
        for (NSUInteger i = 0; i < [deliLine count]; i++) {
            [mLine appendFormat:@"\n%lu. %@",(i+1),deliLine[i]];
        }
    }
    return mLine;
}

- (void) addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    [deliLine addObject:name];
}

- (NSString *) serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    NSString *nextCustomer = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    return nextCustomer;
}


@end
