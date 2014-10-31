//
//  ViewController.m
//  Cruz
//
//  Created by Rudy on 10/17/14.
//  Copyright (c) 2014 Core Tech Labs, Inc. All rights reserved.
//

#import "ViewController.h"
#import <Parse/Parse.h>

@interface ViewController ()


@end

@implementation ViewController;

// Hidden ViewControllers when app offically loads


// All hidden views should be added here
-(void)toggleHiddenState:(BOOL)shouldHide{
    self.loginView.hidden = shouldHide;
    self.signUpView.hidden = shouldHide;
}


// LoginView Controller animations
-(void)showLoginView{
    [UIView animateWithDuration: .25 animations:^{
        _loginView.frame = self.view.frame;
        self.view.alpha = 1;
        self.view.transform = CGAffineTransformMakeScale(1,1);
    }];
}

-(void)closeLoginView{
    [UIView animateWithDuration: .25 animations:^{
        self.view.transform = CGAffineTransformMakeScale(1.5, 1.5);
        self.view.alpha = 0.0;
    }completion:^(BOOL finished){
        if (finished){
            [self.view removeFromSuperview];
        }
    }];
}

- (void)viewDidLoad {
    [self toggleHiddenState:YES]; //Automatically hide all Login and Sign up ViewControllers
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



//The two main ViewController buttons.

- (IBAction)signUpButton:(UIButton *)sender{// Controllers of the Signup View
    [PFUser class];
    
    // Action needed when button is pressed by user
    [self toggleHiddenState:NO];
}

- (IBAction)loginButton:(UIButton *)sender{ // Controllers of the LoginView
    [self showLoginView]; // look in -(void)showLoginView for details
    
    [PFUser logInWithUsernameInBackground:_userName.text password:_passWord.text block:^(PFUser *user, NSError *error) {
        if(!error){
            //[self.loginSuccess];
            //[self performSegueWithIdentifier:nil sender:self];
            
            [self toggleHiddenState:NO];
        }
    }];
}




- (IBAction)closeLoginView:(UIButton *)sender{
    [self closeLoginView]; // View - (void)closeLoginView{} for more details
    // Close Login and Signup ViewControllers
    [self toggleHiddenState:YES];
}



@end
