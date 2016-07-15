//
//  AppDelegate.m
//  ClassMates
//
//  Created by David Swaintek on 7/13/16.
//  Copyright © 2016 David Swaintek. All rights reserved.
//

#import "AppDelegate.h"
#import "Store.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    [[Store shared]save];
}

-(void)applicationDidBecomeActive:(UIApplication *)application
{
    UINavigationController *navigationController = (UINavigationController *)self.window.rootViewController;
    ViewController *viewController = (ViewController *)navigationController.topViewController;
    [viewController updateStudents];
}

@end
