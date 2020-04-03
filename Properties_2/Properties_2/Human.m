//
//  Human.m
//  Properties_2
//
//  Created by Анастасия on 31.03.2020.
//  Copyright © 2020 Анастасия. All rights reserved.
//

#import "Human.h"

@interface Human()
@property (assign, nonatomic) NSInteger nameCount;
@end

@implementation Human
@synthesize name = _name;

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.nameCount = 0;
        self.name = @"Default name";
    }
    return self;
}

- (void) setName: (NSString *) name {
    NSLog(@"setter setName: is called, %@", name);
    // iVar
    _name = name;
}

- (NSInteger) age {
    NSLog(@"age getter is called");
    return _age;
}

- (NSString*) name {
    
    self.nameCount = self.nameCount + 1;
    NSLog(@"name getter is called %d times", self.nameCount);
    return _name;
}

- (NSInteger) howOldAreYou {
    return self.age;
}
//
//- (NSString *) name {
//    return @"hAcK!";
//}

/*
 Если убрать @synthesize name = _name, то будет ошибка, т.к. нельзя будет одновременно переопределить и сеттер, и геттер
 */


@end
