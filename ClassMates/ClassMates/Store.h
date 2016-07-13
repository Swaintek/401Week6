//
//  Store.h
//  ClassMates
//
//  Created by David Swaintek on 7/13/16.
//  Copyright © 2016 David Swaintek. All rights reserved.
//

@import UIKit;
@class Student;

@interface Store : NSObject

+(instancetype)shared;

-(NSArray *)allStudents;
-(Student *)studentForIndexPath:(NSIndexPath *)indexPath;
-(NSInteger)count;

-(void)add:(Student *)student;
-(void)remove:(Student *)student;
-(void)removeStudentAtIndexPath:(NSIndexPath *)indexPath;
-(void)save;

@end
