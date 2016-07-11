//
//  Person.m
//  Week 6 Class 1
//
//  Created by David Swaintek on 7/11/16.
//  Copyright © 2016 David Swaintek. All rights reserved.
//

#import "Person.h"

@implementation Person
{
    NSString *personName;
}

-(void) setName: (NSString *) name
{
    personName = name;
}

-(NSString *) name
{
    return personName;
}

@end
