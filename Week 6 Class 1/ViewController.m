//
//  ViewController.m
//  Week 6 Class 1
//
//  Created by David Swaintek on 7/11/16.
//  Copyright © 2016 David Swaintek. All rights reserved.
//

#import "ViewController.h"
#import "NSString+arrayFromString.h"
#import "NSArray+arrayInspector.h"

@interface ViewController ()

@end

@implementation ViewController




-(void)checkDataType: (id)testData {
 
    if ([testData isKindOfClass:[NSNumber class]]) {
        NSNumber *squareRoot = [NSNumber numberWithDouble:sqrt([testData doubleValue])];
        NSLog(@"%@", squareRoot);
    } else if ([testData isKindOfClass:[NSString class]]) {
        NSString *reversedString = [NSString reverseString:testData];
        NSLog(@"%@", reversedString);
    } else if ([testData isKindOfClass:[NSArray class]]) {
        NSString *arrayStringCounterMessage = [NSArray arrayInspector:testData];
        NSLog(@"%@", arrayStringCounterMessage);
    }
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *sampleString = @"Test string one two three";
    NSArray *returnedArray = [sampleString arrayFromString:sampleString];
    NSNumber *testSquareRoot = @16;
    NSString *testString = @"Ibanez";
    NSArray *testArray = [NSArray arrayWithObjects:@"One", @"Two", @"Three", @4, nil];
    [self checkDataType:testSquareRoot];
    [self checkDataType:testString];
    [self checkDataType:testArray];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
