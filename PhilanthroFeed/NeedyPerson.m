//
//  NeedyPerson.m
//  PhilanthroFeed
//
//  Created by Welles Robinson on 12/28/13.
//  Copyright (c) 2013 Welles Robinson. All rights reserved.
//

#import "NeedyPerson.h"
#import "PFImageStore.h"

@implementation NeedyPerson

@synthesize firstName, lastName, biography, imageKey;

- (NSString *) fullName
{
    return [NSString stringWithFormat:@"%@ %@", [self firstName], [self lastName] ];
}

- (UIImage *) image
{
    return [[PFImageStore sharedStore] imageForKey:imageKey];
}

@end
