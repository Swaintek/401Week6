//
//  main.m
//  MRC
//
//  Created by David Swaintek on 7/12/16.
//  Copyright © 2016 David Swaintek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *dave = [[Person alloc] init];
        
        [dave setName:@"Dave Swaintek"];
        [dave setEmail:@"dswaintek@gmail.com"];
        
        NSLog(@"NAME: %@", dave.name);
        NSLog(@"EMAIL: %@", dave.email);
        
        NSLog(@"Description: %@", [dave description]);
        
        [dave release];
    }
    return 0;
}
