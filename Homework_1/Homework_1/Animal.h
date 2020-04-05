//
//  Animal.h
//  Homework_1
//
//  Created by Анастасия on 05.04.2020.
//  Copyright © 2020 Анастасия. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Animal : NSObject

- (void) move;

@property (strong, nonatomic) NSString* name;
@property (strong, nonatomic) NSString* species;
@property (strong, nonatomic) NSString* color;
@property (assign, nonatomic) NSInteger age;

@end

NS_ASSUME_NONNULL_END
