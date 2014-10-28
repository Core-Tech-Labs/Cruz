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

-(void)toggleHiddenState:(BOOL)shouldHide;

@end

@implementation ViewController;

// Hidden ViewControllers when app offically loads


-(void)toggleHiddenState:(BOOL)shouldHide{
    
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
        self.view.transform = CGAffineTransformMakeScale(1.3, 1.3);
        self.view.alpha = 0.0;
    }completion:^(BOOL finished){
        if (finished){
            [self.view removeFromSuperview];
        }
    }];
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



//

- (IBAction)signUpButton:(UIButton *)sender{// Controllers of the Signup View
    
    // Action needed when button is pressed by user
}

- (IBAction)loginButton:(UIButton *)sender{ // Controllers of the LoginView
    [self showLoginView]; // look in -(void)showLoginView for details
    
    [PFUser logInWithUsernameInBackground:_userName.text password:_passWord.text block:^(PFUser *user, NSError *error) {
        if(!error){
            //[self.loginSuccess];
            //[self performSegueWithIdentifier:nil sender:self];
        }
    }];
}




- (IBAction)closeLoginView:(UIButton *)sender{
    [self closeLoginView];
}



@end
