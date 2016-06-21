//
//  FISHellaDetailViewController.m
//  HellaCells
//
//  Created by David Park on 6/21/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import "FISHellaDetailViewController.h"

@implementation FISHellaDetailViewController

-(void)viewWillAppear:(BOOL)animated {
    
    self.hellaNumberLabel.isAccessibilityElement = true;
    self.hellaNumberLabel.accessibilityLabel = @"bigNumber";
    
    self.hellaNumberLabel.font = [UIFont fontWithName:@"Papyrus" size:200.0];
    self.hellaNumberLabel.text = [NSString stringWithFormat:@"%lu", self.indexClicked.row + 1];
}

@end
