//
//  EDAEntryListTableViewController.m
//  Journal-ObjC
//
//  Created by Eric Andersen on 9/10/18.
//  Copyright © 2018 Eric Andersen. All rights reserved.
//

#import "EDAEntryListTableViewController.h"
#import "EDAEntryDetailViewController.h"
#import "EDAEntryController.h"
#import "EDAEntry.h"

@interface EDAEntryListTableViewController ()

@end

@implementation EDAEntryListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[EDAEntryController shared].entries count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell" forIndexPath:indexPath];
    EDAEntry *entry = [EDAEntryController shared].entries[indexPath.row];
    
    // Configure the cell...
    cell.textLabel.text = entry.title;
//    cell.detailTextLabel.text = entry.timestamp;
    
    
    return cell;
}



// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        EDAEntry *entry = [EDAEntryController shared].entries[indexPath.row];
        [[EDAEntryController shared] removeEntry:entry];
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}


#pragma mark - Navigation


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([[segue identifier] isEqualToString:@"cellToDetailVC"]) {
        EDAEntryDetailViewController *destinationVC = segue.destinationViewController;
        NSInteger *indexPath = [[self tableView] indexPathForSelectedRow].row;
        EDAEntry *entry = [[EDAEntryController shared].entries objectAtIndex:indexPath];
        destinationVC.entry = entry;
    }
}

@end
