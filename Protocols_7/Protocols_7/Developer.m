//
//  Developer.m
//  Protocols_7
//
//  Created by Анастасия on 10.04.2020.
//  Copyright © 2020 Анастасия. All rights reserved.
//

#import "Developer.h"

@implementation Developer

- (void) work {
    
}

#pragma mark - Patient

- (BOOL) areYouOk {
    int ok = arc4random() % 2;
    
    NSLog(@"Is developer %@ ok? %s", self.name, ok ? "Yes!" : "No :(");
    
    return ok;
}
- (void) takePill {
    NSLog(@"Developer %@ takes a pill", self.name);
}

- (void) makeShot {
    NSLog(@"Developer %@ takes makes a shot", self.name);
}

- (BOOL) howIsYourJobs {
    int ok = arc4random() % 2;
    
    NSLog(@"My jobs is %s", ok ? "awesome!!!" : "leaves much to be desired...");
    
    return ok;
}

@end
