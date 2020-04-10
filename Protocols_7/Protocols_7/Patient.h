//
//  Patient.h
//  Protocols_7
//
//  Created by Анастасия on 10.04.2020.
//  Copyright © 2020 Анастасия. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Patient <NSObject>

@required

@property (strong, nonatomic) NSString* name;

- (BOOL) areYouOk;
- (void) takePill;
- (void) makeShot;

@optional
- (void) howIsYourFamily;
- (void) howIsYourJobs;

@end

NS_ASSUME_NONNULL_END
