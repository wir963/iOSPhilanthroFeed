//
//  DetailViewController.m
//  PhilanthroFeed
//
//  Created by Welles Robinson on 1/2/14.
//  Copyright (c) 2014 Welles Robinson. All rights reserved.
//

#import "DetailViewController.h"
#import "NeedyPerson.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

@synthesize person;

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [nameLabel setText:[person getName]];
    [bioLabel setText:[person biography]];
}

@end
