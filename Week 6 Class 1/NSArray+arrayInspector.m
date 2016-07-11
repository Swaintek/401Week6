//
//  NSArray+arrayInspector.m
//  Week 6 Class 1
//
//  Created by David Swaintek on 7/11/16.
//  Copyright © 2016 David Swaintek. All rights reserved.
//

#import "NSArray+arrayInspector.h"

@implementation NSArray (arrayInspector)

+(NSString *)arrayInspector:(NSArray *)arr {
    
    int stringCount = 0;
    int arrayCount = [arr count];
    while (arrayCount > 0) {
        arrayCount --;
        if ([arr[arrayCount] isKindOfClass:[NSString class]]) {
            stringCount ++;
        }
    }
    NSString *returnMessage = [NSString stringWithFormat:@"This array contains %i strings", stringCount];
    return returnMessage;
    
}

@end
