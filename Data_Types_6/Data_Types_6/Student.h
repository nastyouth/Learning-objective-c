//
//  Student.h
//  Data_Types_6
//
//  Created by Анастасия on 08.04.2020.
//  Copyright © 2020 Анастасия. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    GenderMale,
    GenderFemale
    
} Gender;

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) Gender gender;

@end

NS_ASSUME_NONNULL_END
