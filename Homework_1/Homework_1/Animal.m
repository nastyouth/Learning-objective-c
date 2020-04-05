//
//  Animal.m
//  Homework_1
//
//  Created by Анастасия on 05.04.2020.
//  Copyright © 2020 Анастасия. All rights reserved.
//

#import "Animal.h"

@implementation Animal

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"Undefined";
        self.age = 0;
        self.color = @"White";
        self.species = @"Undefined";
    }
    return self;
}

- (void) move {
    NSLog(@"move by 99");
}


@end
