//
//  AddViewController.h
//  ClassMates
//
//  Created by David Swaintek on 7/13/16.
//  Copyright © 2016 David Swaintek. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^AddViewControllerCompletion)();

@interface AddViewController : UIViewController

@property (copy, nonatomic) AddViewControllerCompletion completion;

+(NSString *)identifier;

@end
