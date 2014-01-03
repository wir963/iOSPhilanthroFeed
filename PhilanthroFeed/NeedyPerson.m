//
//  NeedyPerson.m
//  PhilanthroFeed
//
//  Created by Welles Robinson on 12/28/13.
//  Copyright (c) 2013 Welles Robinson. All rights reserved.
//

#import "NeedyPerson.h"

@implementation NeedyPerson

@synthesize firstName, lastName, biography;

- (NSString *) getName
{
    return [NSString stringWithFormat:@"%@ %@", [self firstName], [self lastName] ];
}

@end
