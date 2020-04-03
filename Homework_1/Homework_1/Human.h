//
//  Human.h
//  Homework_1
//
//  Created by Анастасия on 02.04.2020.
//  Copyright © 2020 Анастасия. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Human : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) CGFloat height;
@property (assign, nonatomic) CGFloat weight;
@property (assign, nonatomic) BOOL gender;

- (void) move;

@end

NS_ASSUME_NONNULL_END
