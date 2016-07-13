//
//  MBUserDefaults.h
//  MBUserDefaults
//
//  Created by David Swaintek on 7/12/16.
//  Copyright © 2016 David Swaintek. All rights reserved.
//

#import <Foundation/Foundation.h>

static NSString * _Nonnull const kMBUserDefaultsDidUpdate = @"com.michaelbabiy.kMBUserDefaultsDidUpdate";

@interface MBUserDefaults : NSObject

+ (nonnull instancetype)shared;

- (void)setObject:(nonnull id)object forKey:(nonnull NSString *)key;
- (nonnull id)objectForKey:(nonnull NSString *)key;

- (void)reset;

@end
