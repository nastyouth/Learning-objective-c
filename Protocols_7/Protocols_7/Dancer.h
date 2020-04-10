//
//  Dancer.h
//  Protocols_7
//
//  Created by Анастасия on 10.04.2020.
//  Copyright © 2020 Анастасия. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

NS_ASSUME_NONNULL_BEGIN

@interface Dancer : NSObject <Patient>

@property (strong, nonatomic) NSString* favouriteDance;
@property (strong, nonatomic) NSString* name;

- (void) dance;

@end

NS_ASSUME_NONNULL_END
