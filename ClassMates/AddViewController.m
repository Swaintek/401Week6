//
//  AddViewController.m
//  ClassMates
//
//  Created by David Swaintek on 7/13/16.
//  Copyright © 2016 David Swaintek. All rights reserved.
//

#import "AddViewController.h"
#import "Student+Extension.h"
#import "Store.h"

@interface AddViewController ()

@property (strong, nonatomic) Student *student;
@property (weak, nonatomic) IBOutlet UITextField *firstNameField;
@property (weak, nonatomic) IBOutlet UITextField *lastNameField;
@property (weak, nonatomic) IBOutlet UITextField *emailField;
@property (weak, nonatomic) IBOutlet UITextField *phoneField;

@end

@implementation AddViewController

+ (NSString *)identifier{
    return NSStringFromClass(self);
}

-(Student *)student
{
    if (!_student) {
        _student = [[Student alloc]init];
    }
    
    return _student;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveButtonSelected:(UIButton *)sender {
    
    self.student.firstName = self.firstNameField.text;
    self.student.lastName = self.lastNameField.text;
    self.student.email = self.emailField.text;
    self.student.phone = self.phoneField.text;
    
    if (self.student.isValid && self.completion) {
        [[Store shared]add:self.student];
        [self completion]();
        [self.navigationController popViewControllerAnimated:YES];
    }

    
}


@end
