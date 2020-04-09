//
//  AppDelegate.m
//  Homework_2
//
//  Created by Анастасия on 09.04.2020.
//  Copyright © 2020 Анастасия. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor cyanColor];
    self.window.rootViewController = [[UIViewController alloc] init];
    [self.window makeKeyAndVisible];
    
    NSMutableArray* array;
    array = [NSMutableArray arrayWithCapacity: 30];
    
    CGRect rect;
    rect = CGRectMake(3, 3, 3, 3);
    
    for(int i = 0; i < 30; i++) {
        CGPoint point = CGPointMake((arc4random()% 10), (arc4random()% 10));
        [array addObject: NSStringFromCGPoint(point)];
        NSLog(@"%@", NSStringFromCGPoint(point));
        
        if (CGRectContainsPoint(rect, point)) {
            NSLog(@"Rectangular contains point %@", NSStringFromCGPoint(point));
        }
    }
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


@end
