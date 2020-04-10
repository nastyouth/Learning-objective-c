//
//  Student.m
//  Protocols_7
//
//  Created by Анастасия on 10.04.2020.
//  Copyright © 2020 Анастасия. All rights reserved.
//

#import "Student.h"

@implementation Student

- (void) study {
    
}

#pragma mark - Patient

- (BOOL) areYouOk {
    int ok = arc4random() % 2;
    
    NSLog(@"Is Student %@ ok? %s", self.name, ok ? "Yes!" : "No :(");
    
    return ok;
}
- (void) takePill {
    NSLog(@"Student %@ takes a pill", self.name);
}
- (void) makeShot {
    NSLog(@"Student %@ takes makes a shot", self.name);
}

- (BOOL) howIsYourFamily {
    int ok = arc4random() % 2;
    
    NSLog(@"My family is %s", ok ? "doing well!!!" : "so so...");
    
    return ok;
}

@end
