//
//  Object.m
//  Properties_2.1
//
//  Created by Анастасия on 01.04.2020.
//  Copyright © 2020 Анастасия. All rights reserved.
//

#import "Object.h"

@implementation Object

- (id)init
{
    self = [super init];
    if (self) {
        NSLog(@"object is created");
    }
    return self;
}

- (void) dealloc {
    NSLog(@"object is deallocated");
}

@end
