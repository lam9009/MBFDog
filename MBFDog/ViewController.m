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
    self.myDogs = [[NSMutableArray alloc] init];
    self.currentIndex = 0;
    
    myDog.name = @"Nana";
    myDog.breed = @"St. Bernard";
    myDog.age = 1;
    myDog.image = [UIImage imageNamed:@"St.Bernard.JPG"];
    
    MBFDog *secondDog = [[MBFDog alloc] init];
    secondDog.name = @"Wishbone";
    secondDog.breed = @"Jack Russell Terrier";
    secondDog.image = [UIImage imageNamed:@"JRT.jpg"];
    
    MBFDog *thirdDog = [[MBFDog alloc] init];
    thirdDog.name = @"Lassie";
    thirdDog.breed = @"Collie";
    thirdDog.image = [UIImage imageNamed:@"BorderCollie.jpg"];
    
    MBFDog *fourthDog = [[MBFDog alloc] init];
    fourthDog.name = @"Angel";
    fourthDog.breed = @"Greyhound";
    fourthDog.image = [UIImage imageNamed:@"ItalianGreyhound.jpg"];
    
    [self.myDogs addObject:myDog];
    [self.myDogs addObject:secondDog];
    [self.myDogs addObject:thirdDog];
    [self.myDogs addObject:fourthDog];
    NSLog(@"%@", self.myDogs);
    
    
    int dogYears = [myDog ageInDogYearsFromAge:myDog.age];
    NSLog(@"%i", dogYears);
    
    
    //[myDog bark];
    [myDog barkANumberOfTimes:3];
    NSLog(@"my dog's breed is %@", myDog.breed);
    [myDog changeBreedToChiWaWa];
    NSLog(@"my dog's breed is %@", myDog.breed);
    
    [self printHelloWorld];
    
    [myDog barkANumberOfTimes:2 loudly:NO];
    
    //NSLog(@"my dog's name is: %@, it's a %@, and its age is: %i", myDog.name, myDog.breed, myDog.age);


}
- (void) printHelloWorld{
    NSLog(@"This is my hello world!");
}

- (IBAction)newDogBarItemButtonPressed:(UIBarButtonItem *)sender {
    int numberOfDogs = [self.myDogs count];
    int randomIndex = arc4random() % numberOfDogs;
    
    if (self.currentIndex == randomIndex && self.currentIndex == 0){
        randomIndex ++;
    }
    else if (self.currentIndex == randomIndex){
        randomIndex --;
    }
    self.currentIndex = randomIndex;
    
    MBFDog *randomDog = [self.myDogs objectAtIndex:randomIndex];
    
//    self.myImageView.image = randomDog.image;
//    self.breedLabel.text = randomDog.breed;
//    self.nameLabel.text = randomDog.name;
    
    [UIView transitionWithView:self.view duration:2.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        self.myImageView.image = randomDog.image;
        self.breedLabel.text = randomDog.breed;
        self.nameLabel.text = randomDog.name;
    } completion:^(BOOL finished) {
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
