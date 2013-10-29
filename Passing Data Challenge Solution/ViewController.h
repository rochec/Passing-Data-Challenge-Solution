//
//  ViewController.h
//  Passing Data Challenge Solution
//
//  Created by Chris Roche on 10/23/13.
//  Copyright (c) 2013 Chris Roche. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"

@interface ViewController : UIViewController <DetailViewControllerDelegate>

@property (strong, nonatomic) IBOutlet UITextField *viewTextField;

- (IBAction)editingEnded:(id)sender;

@end
