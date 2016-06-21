//
//  FISHellaMasterTableViewController.m
//  HellaCells
//
//  Created by David Park on 6/21/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import "FISHellaMasterTableViewController.h"

@implementation FISHellaMasterTableViewController

-(void)viewDidLoad {
    
    self.tableView.isAccessibilityElement = true;
    self.tableView.accessibilityIdentifier = @"Table";
    
    self.numbersArray = [[NSMutableArray alloc] init];
    for(NSUInteger i = 1; i < 101; i++) {
        [self.numbersArray addObject:@(i)];
    }
    NSLog(@"%@", self.numbersArray);
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [self.numbersArray count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@",[self.numbersArray objectAtIndex:indexPath.row]];
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    FISHellaDetailViewController *destinationVC = [segue destinationViewController];
    
    NSIndexPath *clickedIndexPath = [self.tableView indexPathForSelectedRow];
    destinationVC.indexClicked = clickedIndexPath;
    
    
    
}

@end
