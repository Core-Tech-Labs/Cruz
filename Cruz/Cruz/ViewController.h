//
//  ViewController.h
//  Cruz
//
//  Created by Rudy on 10/17/14.
//  Copyright (c) 2014 Core Tech Labs, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface ViewController : UIViewController


// Main View Buttons
- (IBAction)signUpButton:(UIButton *)sender;
- (IBAction)loginButton:(UIButton *)sender;

//LoginView Controllers items
@property (strong, nonatomic) IBOutlet UIView *loginView;

@property (strong, nonatomic) IBOutlet UITextField *userName;
@property (strong, nonatomic) IBOutlet UITextField *passWord;
@property (strong, nonatomic) IBOutlet UIButton *loginPass;


//Close View Controller
- (IBAction)closeLoginView:(UIButton *)sender;



// SignupView Controller items




@end

