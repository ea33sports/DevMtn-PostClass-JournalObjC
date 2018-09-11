//
//  EDAEntryDetailViewController.h
//  Journal-ObjC
//
//  Created by Eric Andersen on 9/10/18.
//  Copyright © 2018 Eric Andersen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EDAEntry.h"


@interface EDAEntryDetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *bodyTextView;

@property (nonatomic, readwrite) EDAEntry *entry;


- (IBAction)saveButtonTapped:(UIButton *)sender;
- (IBAction)clearButtonTapped:(UIBarButtonItem *)sender;


@end
