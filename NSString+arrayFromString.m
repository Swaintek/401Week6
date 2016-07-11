//
//  NSString+arrayFromString.m
//  Week 6 Class 1
//
//  Created by David Swaintek on 7/11/16.
//  Copyright © 2016 David Swaintek. All rights reserved.
//

#import "NSString+arrayFromString.h"

@implementation NSString (arrayFromString)

-(NSArray *)arrayFromString: (NSString *)inputString{
    NSArray *newArray = [inputString componentsSeparatedByString:@" "];
    NSLog(@"%@", newArray);
    return newArray;
    
}

+(NSString *)reverseString:(NSString *)str {
    NSMutableString *reversed = [NSMutableString string];
    NSInteger charIndex = [str length];
    while (charIndex > 0) {
        charIndex--;
        NSRange subRange = NSMakeRange(charIndex, 1);
        [reversed appendString:[str substringWithRange:subRange]];
    }
    return reversed;
}


@end
