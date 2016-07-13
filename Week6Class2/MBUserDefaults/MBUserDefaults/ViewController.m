//
//  ViewController.m
//  MBUserDefaults
//
//  Created by David Swaintek on 7/12/16.
//  Copyright © 2016 David Swaintek. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [[NSNotificationCenter defaultCenter]addObserverForName:kMBUserDefaultsDidUpdate
                                                     object:nil
                                                      queue:nil
                                                 usingBlock:]
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
