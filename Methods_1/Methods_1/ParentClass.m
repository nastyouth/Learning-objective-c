//
//  ParentClass.m
//  Methods_1
//
//  Created by Анастасия on 30.03.2020.
//  Copyright © 2020 Анастасия. All rights reserved.
//

#import "ParentClass.h"

@implementation ParentClass

- (id)init
{
    self = [super init];
    if (self) {
        NSLog(@"Instance of parent class is init.");
    }
    return self;
}

+ (void) sayMemoryOfMyClass {
    NSLog(@"Memory of my class is %@", self);
}

- (void) sayNameOfMyClass {
    NSLog(@"Name of my class is %@", self);
}

- (void) say:(NSString*) string {
    NSLog(@"%@", string);
}

- (void) say:(NSString*) string and:(NSString*) string2 {
    NSLog(@"%@, %@", string, string2);
}

- (NSString* ) saySomeString {
    return @"Да! Я такого же мнения.";
}

- (NSString*) saySomething {
    NSString* string = [self saySomeString];
    return string;
}

@end
