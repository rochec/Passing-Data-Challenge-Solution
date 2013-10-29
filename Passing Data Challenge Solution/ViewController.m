//
//  ViewController.m
//  Passing Data Challenge Solution
//
//  Created by Chris Roche on 10/23/13.
//  Copyright (c) 2013 Chris Roche. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

}

-(IBAction)editingEnded:(id)sender{
    [sender resignFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([sender isKindOfClass:[UIButton class]]) {
        if ([segue.destinationViewController isKindOfClass:[DetailViewController class]]) {
            DetailViewController *nextViewController = segue.destinationViewController;
            nextViewController.textFieldInfo = self.viewTextField.text;
            nextViewController.delegate = self;
            //nextViewController.detailViewLabel.text = self.textFieldInfo;
        }
    }
}

#pragma mark - DetailViewController Delegate Implementation

-(void)didUpdateText:(NSString *)text
{
    self.viewTextField.text = text;
}

@end
