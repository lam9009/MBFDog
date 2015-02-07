//
//  MBFDog.h
//  MBFDog
//
//  Created by Alfred on 7/2/15.
//  Copyright (c) 2015 Maptier. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MBFDog : NSObject
@property (nonatomic) int age;
@property (strong, nonatomic) NSString *breed;
@property (strong, nonatomic) UIImage *image;
@property (strong, nonatomic) NSString *name;

- (void) bark;
- (void) bardANumberOfTimes:(int)numberOfTimes;
@end
