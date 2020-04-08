//
//  AppDelegate.m
//  Data_Types_6
//
//  Created by Анастасия on 08.04.2020.
//  Copyright © 2020 Анастасия. All rights reserved.
//

#import "AppDelegate.h"
#import "Student.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor cyanColor];
    self.window.rootViewController = [[UIViewController alloc] init];
    [self.window makeKeyAndVisible];
    
    BOOL boolVar = YES;
    
    NSInteger intVar = 10;
    
    NSUInteger uIntVar = 100;
    
    CGFloat floatVar = 1.5f;
    
    double doubleVar = 2.5f;
    
    NSLog(@"boolVar = %ld, intV  ar = %ld, uIntVar, floatVar = %ld, doubleVar = %ld", sizeof(boolVar), sizeof(intVar), sizeof(uIntVar), sizeof(floatVar), sizeof(doubleVar));
    
    // With objects
    Student* studentA = [[Student alloc] init];
    studentA.name = @"Alexy";
    NSLog(@"Student A name = %@", studentA.name);
    
    Student* studentB = studentA;
    studentB.name = @"John";
    
    NSLog(@"Student A name = %@", studentA.name);
    
    // With primitive types
    NSInteger a = 10;
    NSLog(@"a = %d", a);
    
    NSInteger b = a;
    b = 5;
    NSLog(@"a = %d, b = %d", a, b);
    
    // Pointer to int c. It will point to the address of the variable a
    NSInteger * c = &a;
    
    *c = 8;
    NSLog(@"a = %d, b = %d", a, b);
    
    NSInteger test = 0;
    NSInteger result = [self test:a testPointer:&test];
    
    NSLog(@"result = %d, test = %d", result, test);
    
    // Working with enum
    Student* student = [[Student alloc] init];
    [student setGender:GenderMale];
    [student setGender:GenderFemale];
    
    // Structures
    CGPoint point;
    
    point.x = 5.5f;
    point.y = 10;
    
    CGSize size;
    size.width = 10;
    size.height = 5;
    
    CGRect rect;
    rect.origin = point;
    rect.size = size;
    
    rect = CGRectMake(0, 0, 30, 60);
    
    CGRectContainsPoint(rect, point);
    
    // Add primitive types to array
    
    NSNumber* boolObject = [NSNumber numberWithBool: boolVar];
    NSNumber* intObject = [NSNumber numberWithInteger: intVar];
    NSNumber* floatObject = [NSNumber numberWithFloat: floatVar];
    NSNumber* doubleObject = [NSNumber numberWithDouble: doubleVar];
    
    NSArray* array = [NSArray arrayWithObjects: boolObject, intObject, floatObject, doubleObject, nil];
    
    NSLog(@"intVar = %d ", [[array objectAtIndex:1] integerValue]);
    
    // Add structures to array
    
    CGPoint point1 = CGPointMake(0, 1);
    CGPoint point2 = CGPointMake(5, 4);
    CGPoint point3 = CGPointMake(2, 8);
    CGPoint point4 = CGPointMake(6, 1);
    
    [NSValue valueWithCGPoint: point1];
    
    NSArray* array2 = [NSArray arrayWithObjects:
                       [NSValue valueWithCGPoint: point1],
                       [NSValue valueWithCGPoint: point2],
                       [NSValue valueWithCGPoint: point3],
                       [NSValue valueWithCGPoint: point4],
                       nil];
    
    for (NSValue* value in array2) {
        CGPoint p = [value CGPointValue];
        
        NSLog(@"point = %@ ", NSStringFromCGPoint(p));
    }
    
    return YES;
}

- (NSInteger) test:(NSInteger) test testPointer:(NSInteger*) testPointer {
    
    *testPointer = 5;
    return test;
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
