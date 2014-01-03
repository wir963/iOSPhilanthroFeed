//
//  NeedyPersonStore.h
//  PhilanthroFeed
//
//  Created by Welles Robinson on 12/28/13.
//  Copyright (c) 2013 Welles Robinson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NeedyPerson.h"

@interface NeedyPersonStore : NSObject
{
    NSMutableArray *allItems;
}
// Notice that this is a class method and prefixed with a + instead of a -
+ (NeedyPersonStore *)sharedStore;

- (NSArray *)allItems;
- (NeedyPerson *)createItem;

@end
