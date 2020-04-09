//
//  AppDelegate.m
//  Homework_1
//
//  Created by Анастасия on 02.04.2020.
//  Copyright © 2020 Анастасия. All rights reserved.
//

#import "AppDelegate.h"
#import "Human.h"
#import "Cyclist.h"
#import "Runner.h"
#import "Swimmer.h"
#import "Judoka.h"
#import "Animal.h"
#import "Dog.h"
#import "Cat.h"
#import "Fox.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor cyanColor];
    self.window.rootViewController = [[UIViewController alloc] init];
    [self.window makeKeyAndVisible];
    
    Human* human = [[Human alloc] init];
    
    human.name = @"Alexy";
    human.weight = 55.1;
    human.height = 1.7;
    human.gender = 0;
    
//    NSLog(@"Human name is %@", human.name);
//    NSLog(@"Human weight is %f", human.weight);
//    NSLog(@"Human height is %f", human.height);
//    NSLog(@"Human gender is %d", human.gender);
//
//    [human move];
    
    Cyclist* cyclist = [[Cyclist alloc] init];
    cyclist.name = @"John";
    cyclist.weight = 66.3;
    cyclist.height = 1.85;
    cyclist.gender = 0;
    
    Runner* runner = [[Runner alloc] init];
    runner.name = @"Dasha";
    runner.weight = 50.7;
    runner.height = 1.66;
    runner.gender = 1;

    Swimmer* swimmer = [[Swimmer alloc] init];
    swimmer.name = @"Kevin";
    swimmer.weight = 81.0;
    swimmer.height = 1.90;
    swimmer.gender = 0;
    
    Judoka* judoka = [[Judoka alloc] init];
    judoka.name = @"Valery";
    judoka.weight = 72.0;
    judoka.height = 1.63;
    judoka.gender = 0;
    
    Animal* animal = [[Animal alloc] init];
    animal.name = @"Bonya";
    animal.age = 7;
    animal.species = @"Raccoon";
    animal.color = @"White-grey";
    
    Dog* dog = [[Dog alloc] init];
    dog.name = @"Baks";
    dog.age = 6;
    dog.species = @"Labrador";
    dog.color = @"Black";
    
    Cat* cat = [[Cat alloc] init];
    cat.name = @"Dusya";
    cat.age = 13;
    cat.species = @"Munchkin";
    cat.color = @"light grey";
    
    Fox* fox = [[Fox alloc] init];
    fox.name = @"Alisa";
    fox.age = 8;
    fox.species = @"Corsac";
    fox.color = @"Orange-white";
    
    NSArray* arrayOfSportsmens = [[NSArray alloc] initWithObjects:human, cyclist, runner, swimmer, judoka, nil];
    
    NSLog(@"------------level pupil------------");
    // MARK: level pupil
    for (Human* object in arrayOfSportsmens) {
        NSLog(@"name is %@", object.name);
        NSLog(@"weight is %f",object.weight);
        NSLog(@"height is %f",object.height);
        NSLog(@"gender is %d", object.gender);

        [object move];
    }
    
     NSLog(@"------------level student------------");
    // MARK: level student
    for (int i = [arrayOfSportsmens count] - 1; i >= 0; i --) {
        
        Human* object = [arrayOfSportsmens objectAtIndex:i];
        
        NSLog(@"objectAtIndex is %d", i);
        
        NSLog(@"name is %@", object.name);
        NSLog(@"weight is %f",object.weight);
        NSLog(@"height is %f",object.height);
        NSLog(@"gender is %d", object.gender);

        if([object isKindOfClass:[Judoka class]]) {
            Judoka* object = (Judoka*) object;
            [object toDefineSportsCategory];
            [object superMove];
        }
        [object move];
    }

    NSLog(@"------------level master------------");
    //MARK: level master
 
    NSArray* array = [[NSArray alloc] initWithObjects: human, cyclist, runner, swimmer, judoka, animal, dog, cat, fox, nil];
    for (int i = 0; i < [array count]; i++) {
        
        Human* objectHuman = [array objectAtIndex:i];
        Animal* objectAnimal = [array objectAtIndex:i];
        
        if([objectAnimal isKindOfClass: [Animal class]]) {
            NSLog(@"type of object is animal");
            NSLog(@"name of animal is %@", objectAnimal.name);
            NSLog(@"age of animal is %d", objectAnimal.age);
            NSLog(@"color of animal is %@", objectAnimal.color);
            NSLog(@"species of animal is %@", objectAnimal.species);
            [objectAnimal move];
        } else {
            NSLog(@"type of object is human");
            NSLog(@"name of human is %@", objectHuman.name);
            NSLog(@"weight of human is %f",objectHuman.weight);
            NSLog(@"height of human is %f",objectHuman.height);
            NSLog(@"gender of human is %d", objectHuman.gender);
            [objectHuman move];
        }
    }
    NSLog(@"------------level star------------");
    //MARK: level star
    
    NSArray* arrayOfAnimals = [[NSArray alloc] initWithObjects: animal, dog, cat, fox, nil];
    NSInteger maxCount;

        if ([arrayOfSportsmens count]  > [arrayOfAnimals count]) {
            maxCount = [arrayOfSportsmens count];
        } else {
            maxCount = [arrayOfAnimals count];
        }
        
        for(int i = 0; i <= maxCount; i++) {
            if ([arrayOfSportsmens count] > i) {
                Human* objectHuman = [arrayOfSportsmens objectAtIndex:i];
                NSLog(@"name of animal is %@", objectHuman.name);
            }
            
            if ([arrayOfAnimals count] > i) {
                Animal* objectAnimal = [arrayOfAnimals objectAtIndex:i];
                NSLog(@"name of human is %@", objectAnimal.name);
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
