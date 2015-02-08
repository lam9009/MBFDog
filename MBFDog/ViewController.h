//
//  ViewController.h
//  MBFDog
//
//  Created by Alfred on 7/2/15.
//  Copyright (c) 2015 Maptier. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MBFDog.h"

@interface ViewController : UIViewController

@property (strong, nonatomic)NSMutableArray *myDogs;

- (void) printHelloWorld;
- (IBAction)newDogBarItemButtonPressed:(UIBarButtonItem *)sender;
@property (strong, nonatomic) IBOutlet UIImageView *myImageView;
@property (strong, nonatomic) IBOutlet UILabel *breedLabel;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (nonatomic) int currentIndex;

@end

