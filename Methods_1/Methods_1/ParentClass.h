//
//  ParentClass.h
//  Methods_1
//
//  Created by Анастасия on 30.03.2020.
//  Copyright © 2020 Анастасия. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ParentClass : NSObject

+ (void) sayMemoryOfMyClass;
- (void) sayNameOfMyClass;
- (void) say:(NSString*) string;
- (void) say:(NSString*) string and:(NSString*) string2;
- (NSString* ) saySomeString;
- (NSString*) saySomething;

@end

NS_ASSUME_NONNULL_END
