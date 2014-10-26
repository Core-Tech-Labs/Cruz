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
    self.loginView.hidden = YES;
}


// LoginView Controller animations
-(void)showLoginView{
    [UIView animateWithDuration: .25 animations:^{
        self.view.alpha = 1;
        self.view.transform = CGAffineTransformMakeScale(1,1);
    }];
}

-(void)closeLoginView{
    [self animateWithDuration: .25 animations:^{
        self.view.transform = CGAffineTransformMakeScale(1.3, 1.3);
        self.view.alpha = 0.0;
    }completion:^(BOOL finished){
        if (finished){
            [self.view removeFromSuperview];
        }
    }];
}

- (void)viewDidLoad {
    
    
- (IBAction)signUpButton:(UIButton *)sender{
        // Action needed when button is pressed by user
}
    
- (IBAction)loginButton:(UIButton *)sender{
        // Action needed when button is pressed by user
}
    
    
   
    
- (IBAction)closeLoginView:(UIButton *)sender{
    [self closeLoginView];
    }
    

    [super viewDidLoad];
    
    
  
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
