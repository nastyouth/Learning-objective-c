//
//  AppDelegate.m
//  Protocols_7
//
//  Created by Анастасия on 10.04.2020.
//  Copyright © 2020 Анастасия. All rights reserved.
//

#import "AppDelegate.h"
#import "Patient.h"
#import "Developer.h"
#import "Student.h"
#import "Dancer.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor cyanColor];
    self.window.rootViewController = [[UIViewController alloc] init];
    [self.window makeKeyAndVisible];
    
    Developer* developer1 = [[Developer alloc] init];
    Developer* developer2 = [[Developer alloc] init];
    
    Student* student1 = [[Student alloc] init];
    Student* student2 = [[Student alloc] init];
    Student* student3 = [[Student alloc] init];
    
    Dancer* dancer1 = [[Dancer alloc] init];
    Dancer* dancer2 = [[Dancer alloc] init];
    
    developer1.name = @"Steve";
    developer2.name = @"Bill";
    
    student1.name = @"Dasha";
    student2.name = @"Nastya";
    student3.name = @"Sasha";
    
    dancer1.name = @"Vlad";
    dancer2.name = @"Denis";
    
    NSArray* patients = [NSArray arrayWithObjects: developer1, developer2, student1, student2, student3, dancer1, dancer2, nil];
    
    /*
    for(int i = 0; i < [patints count]; i++) {
        id <Patient> patient = [patients objectAtIndex:i];
    }
    */
    
    for (id <Patient> patient in patients) {
        
        NSLog(@"Patient name is %@", patient.name);
        {
            
        }
        if([patient respondsToSelector:@selector(howIsYourJobs)]) {
            NSLog(@"How is your jobs?");
            [patient howIsYourJobs];
        }
        
        if([patient respondsToSelector:@selector(howIsYourFamily)]) {
            NSLog(@"How is your family?");
            [patient howIsYourFamily];
        }
        
        if(![patient areYouOk]) {
            [patient takePill];
            
            if(![patient areYouOk]) {
                [patient makeShot];
            }
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
