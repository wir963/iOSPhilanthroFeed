//
//  PFItemsViewController.m
//  PhilanthroFeed
//
//  Created by Welles Robinson on 12/28/13.
//  Copyright (c) 2013 Welles Robinson. All rights reserved.
//

#import "PFItemsViewController.h"
#import "NeedyPerson.h"
#import "NeedyPersonStore.h"
#import "DetailViewController.h"

@implementation PFItemsViewController

- (id)init
{
    // Call the superclass's designated initializer
    self = [super initWithStyle:UITableViewStyleGrouped];
    if (self) {
        for (int i = 0; i < 5; i++) {
            [[NeedyPersonStore sharedStore] createItem];
        }
    }
    return self;
}

- (id)initWithStyle:(UITableViewStyle)style
{
    return [self init];
}

// this is the method for clicking on a row
- (void)tableView:(UITableView *)aTableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DetailViewController *detailViewController = [[DetailViewController alloc] init];
    
    NSArray *items = [[NeedyPersonStore sharedStore] allItems];
    NeedyPerson *person = [items objectAtIndex:[indexPath row]];
    
    // Give detail view controller a pointer to the item object in row
    [detailViewController setPerson:person];
    
    // Push it onto the top of the navigation controller's stack
    [[self navigationController] pushViewController:detailViewController
                                           animated:YES];
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    return [[[NeedyPersonStore sharedStore] allItems] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Check for a reusable cell first, use that if it exists
    UITableViewCell *cell =
    [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"];
    
    // If there is no reusable cell of this type, create a new one
    if (!cell) {
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault
                reuseIdentifier:@"UITableViewCell"];
    }
    
    // Set the text on the cell with the description of the item
    // that is at the nth index of items, where n = row this cell
    // will appear in on the tableview
    NeedyPerson *p = [[[NeedyPersonStore sharedStore] allItems]
                  objectAtIndex:[indexPath row]];
    
    [[cell textLabel] setText:[p firstName]];
    
    return cell;
}


@end
