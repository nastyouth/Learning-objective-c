//
//  Human.m
//  Homework_1
//
//  Created by Анастасия on 02.04.2020.
//  Copyright © 2020 Анастасия. All rights reserved.
//

#import "Human.h"

@implementation Human

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"Undefined";
        self.weight = 0.0;
        self.height = 0.0;
        self.gender = 0;
    }
    return self;
}

- (void) move {
    NSLog(@"move by 2222");
}

@end
