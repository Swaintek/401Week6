//
//  CloudService.h
//  ClassMates
//
//  Created by David Swaintek on 7/14/16.
//  Copyright © 2016 David Swaintek. All rights reserved.
//

@import Foundation;
@import CloudKit;
@class Student;

typedef enum : NSUInteger
{
    CloudOperationSave = 0,
    CloudOperationRetrieve,
    CloudOperationDelete,
} CloudOperation;

typedef void(^CloudServiceCompletion)(BOOL success, NSArray<Student *> *students);

@interface CloudService : NSObject

+ (instancetype)shared;

- (void)enqueueOperation:(CloudServiceCompletion)completion;
- (void)enqueueOperation:(CloudOperation)operation student: (Student *)student completion:(CloudServiceCompletion)completion;

@end
