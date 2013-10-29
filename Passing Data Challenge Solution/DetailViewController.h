//
//  DetailViewController.h
//  Passing Data Challenge Solution
//
//  Created by Chris Roche on 10/23/13.
//  Copyright (c) 2013 Chris Roche. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DetailViewControllerDelegate <NSObject>

@required

-(void)didUpdateText:(NSString *)text;

@end

@interface DetailViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) id <DetailViewControllerDelegate> delegate;

@property (strong, nonatomic) IBOutlet UILabel *detailViewLabel;
@property (strong, nonatomic) IBOutlet UITextField *detailTextField;
@property (strong, nonatomic) NSString *textFieldInfo;

- (IBAction)updateButtonPressed:(UIButton *)sender;

@end
