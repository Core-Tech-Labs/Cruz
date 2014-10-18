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

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    PFUser *user = [PFUser user];
    user.username = @"Rudy Jessop";
    user.password = @"laravelOut";
    user.email = @"webmaster@rudyjessop.com";
    
    // other fields can be set if you want to save more information
    //user[@"phone"] = @"650-555-0000";
    
    [user signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (!error) {
            // Hooray! Let them use the app now.
        } else {
            NSString *errorString = [error userInfo][@"error"];
            NSLog(@"%@", [errorString]);
    }];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
