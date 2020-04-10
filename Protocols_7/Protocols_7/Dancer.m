//
//  Dancer.m
//  Protocols_7
//
//  Created by Анастасия on 10.04.2020.
//  Copyright © 2020 Анастасия. All rights reserved.
//

#import "Dancer.h"

@implementation Dancer

- (void) dance {
    
}

#pragma mark - Patient


- (BOOL) areYouOk {
    int ok = arc4random() % 2;
    
    NSLog(@"Is Dancer %@ ok? %s", self.name, ok ? "Yes!" : "No :(");
    
    return ok;
}
- (void) takePill {
    NSLog(@"Dancer %@ takes a pill", self.name);
}
- (void) makeShot {
    NSLog(@"Dancer %@ takes makes a shot", self.name);
}

- (BOOL) howIsYourJobs {
    int ok = arc4random() % 2;
    
    NSLog(@"My jobs is %s", ok ? "awesome!!!" : "leaves much to be desired...");
    
    return ok;
}

- (BOOL) howIsYourFamily {
    int ok = arc4random() % 2;
    
    NSLog(@"My family is %s", ok ? "doing well!!!" : "so so...");
    
    return ok;
}

@end
