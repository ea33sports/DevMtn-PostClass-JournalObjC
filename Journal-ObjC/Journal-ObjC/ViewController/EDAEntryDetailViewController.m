//
//  EDAEntryDetailViewController.m
//  Journal-ObjC
//
//  Created by Eric Andersen on 9/10/18.
//  Copyright © 2018 Eric Andersen. All rights reserved.
//

#import "EDAEntryDetailViewController.h"
#import "EDAEntryListTableViewController.h"
#import "EDAEntryController.h"
#import "EDAEntry.h"

@interface EDAEntryDetailViewController ()

@end

@implementation EDAEntryDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = _entry.title;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self updateViews];
}

- (void)updateViews {
    _titleTextField.text = _entry.title;
    _bodyTextView.text = _entry.bodyText;
}

- (IBAction)saveButtonTapped:(UIButton *)sender
{
    if (_entry == nil) {
        [[EDAEntryController shared] addEntryWithTitle:_titleTextField.text bodyText:_bodyTextView.text];
    } else {
        [[EDAEntryController shared] updateEntry:_entry withTitle:_titleTextField.text andBodyText:_bodyTextView.text];
    }
    [[self navigationController] popViewControllerAnimated:true];
}

- (IBAction)clearButtonTapped:(UIBarButtonItem *)sender
{
    _titleTextField.text = @"";
    _bodyTextView.text = @"";
}

@end
