//
//  ChildClass.m
//  Methods_1
//
//  Created by Анастасия on 30.03.2020.
//  Copyright © 2020 Анастасия. All rights reserved.
//

#import "ChildClass.h"

@implementation ChildClass

- (id)init
{
    self = [super init];
    if (self) {
        NSLog(@"Instance of child class is init.");
    }
    return self;
}

- (NSString*) saySomething {
    
    [self saySomeString];
    
    return @"Здорово!))";
}

@end
