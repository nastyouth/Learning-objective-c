//
//  Developer.h
//  Protocols_7
//
//  Created by Анастасия on 10.04.2020.
//  Copyright © 2020 Анастасия. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Patient.h"

NS_ASSUME_NONNULL_BEGIN

@interface Developer : NSObject <Patient>

@property (assign, nonatomic) CGFloat experience;
@property (strong, nonatomic) NSString* name;

- (void) work; 

@end

NS_ASSUME_NONNULL_END
