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
    self.name = @"Q-Chai";
    self.breed = @"Pug";
}

- (void) barkANumberOfTimes:(int)numberOfTimes{
    for (int barK = 1; barK <= numberOfTimes; barK ++ ){
        NSLog(@"Woof!, Woof!, Woof!");
    }
}

- (void) changeBreedToChiWaWa{
    self.breed = @"ChiWaWa";
}

- (void) barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud{
    if (!isLoud){
        for (int b = 1; b <= numberOfTimes; b++) {
            NSLog(@"Yipp! Yipp!");
        }
    }else {
        for (int b = 1; b <= numberOfTimes; b++) {
            NSLog(@"Ruff! Ruff!");
                  }
        }
}
- (int) ageInDogYearsFromAge: (int) regularAge{
    int newAge = regularAge * 7;
    return newAge;
}

@end
