//
//  main.m
//  Methods_1
//
//  Created by Анастасия on 30.03.2020.
//  Copyright © 2020 Анастасия. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ParentClass.h"
#import "ChildClass.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ChildClass* parent = [[ChildClass alloc] init];
        [parent sayNameOfMyClass];
        [parent say:@"Hello!"];
        [parent say:@"Objective-C - это круто!" and:@"Я так считаю :)"];
        NSLog(@"%@", [parent saySomething]);
    }
    return 0;
}
