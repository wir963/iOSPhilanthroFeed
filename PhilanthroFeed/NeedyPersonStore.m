//
//  NeedyPersonStore.m
//  PhilanthroFeed
//
//  Created by Welles Robinson on 12/28/13.
//  Copyright (c) 2013 Welles Robinson. All rights reserved.
//

#import "NeedyPersonStore.h"

@implementation NeedyPersonStore

// want this to be a singleton class
+ (NeedyPersonStore *)sharedStore
{
    static NeedyPersonStore *sharedStore = nil;
    if (!sharedStore)
        sharedStore = [[super allocWithZone:nil] init];
    
    return sharedStore;
}

// overwrite this method so is not possible to alloc any instance of this class
+ (id)allocWithZone:(NSZone *)zone
{
    return [self sharedStore];
}

- (id)init
{
    self = [super init];
    if (self) {
        allItems = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (NSArray *)allItems
{
    return allItems;
}

- (NeedyPerson *)createItem
{
    NeedyPerson *p = [[NeedyPerson alloc] init];
    [p setFirstName:@"Welles"];
    [p setLastName:@"Robinson"];
    [p setBiography:@"Blah blah blah"];
    
    [allItems addObject:p];
    
    return p;
}


@end
