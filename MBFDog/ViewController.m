//
//  ViewController.m
//  MBFDog
//
//  Created by Alfred on 7/2/15.
//  Copyright (c) 2015 Maptier. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MBFDog *myDog = [[MBFDog alloc] init];
    
    myDog.name = @"Nana";
    myDog.breed = @"St. Bernard";
    myDog.age = 1;
    
    NSLog(@"my dog's name is: %@, it's a %@, and its age is: %i", myDog.name, myDog.breed, myDog.age);


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
