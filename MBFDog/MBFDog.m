//
//  MBFDog.m
//  MBFDog
//
//  Created by Alfred on 7/2/15.
//  Copyright (c) 2015 Maptier. All rights reserved.
//

#import "MBFDog.h"

@implementation MBFDog

- (void) bark{
    NSLog(@"Woof!, Woof!");
}

- (void) bardANumberOfTimes:(int)numberOfTimes{
    for (int barK = 1; barK <= numberOfTimes; barK ++ ){
        NSLog(@"Woof!, Woof!, Woof!");
    }
}
@end
