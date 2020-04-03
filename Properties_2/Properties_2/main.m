//
//  main.m
//  Properties_2
//
//  Created by Анастасия on 31.03.2020.
//  Copyright © 2020 Анастасия. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Human.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Human* human = [[Human alloc] init];
        
        human.name = @"Alexy";
        human.age = 30;
        human.height = 1.6f;
        human.weight = 56.0f;
        
        NSLog(@"name = %d", [human howOldAreYou]);
        
        NSLog(@"name = %@", human.name);
        NSLog(@"name = %@", human.name);
        
        NSLog(@"age = %ld", (long)human.age);
        NSLog(@"height = %f", human.height);
        NSLog(@"weight = %f", human.weight);
        
        // Так тоже правильно, но с точки зрения понимания кода не приветствуется (читабельность)
        /*
        [human setName:@"Alexy"];
        [human setAge:30];
        [human setHeight:1.6f];
        [human setWeight:80.f];
        
        NSLog(@"name = %@", [human name]);
        NSLog(@"age = %ld", (long)[human age]);
        NSLog(@"height = %f", [human height]);
        NSLog(@"weight = %f", [human weight]);
         */
        
    }
    return 0;
}
