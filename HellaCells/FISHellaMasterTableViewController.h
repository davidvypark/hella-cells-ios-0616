//
//  FISHellaMasterTableViewController.h
//  HellaCells
//
//  Created by David Park on 6/21/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FISHellaDetailViewController.h"

@interface FISHellaMasterTableViewController : UITableViewController

@property (strong, nonatomic)NSMutableArray *numbersArray;

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;

@end
