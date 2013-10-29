//
//  DetailViewController.m
//  Passing Data Challenge Solution
//
//  Created by Chris Roche on 10/23/13.
//  Copyright (c) 2013 Chris Roche. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.detailViewLabel.text = self.textFieldInfo;
    self.detailTextField.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)updateButtonPressed:(UIButton *)sender {
    [self.delegate didUpdateText:self.detailTextField.text];

    
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.detailTextField resignFirstResponder];
    [self.delegate didUpdateText:self.detailTextField.text];
    
    return YES;
}
     
     
@end
