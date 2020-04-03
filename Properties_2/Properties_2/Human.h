//
//  Human.h
//  Properties_2
//
//  Created by Анастасия on 31.03.2020.
//  Copyright © 2020 Анастасия. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Human : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) NSInteger age;
@property (assign, nonatomic) CGFloat height;
@property (assign, nonatomic) CGFloat weight;

- (NSInteger) age;

- (NSInteger) howOldAreYou;

@end

NS_ASSUME_NONNULL_END
