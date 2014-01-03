//
//  NeedyPerson.h
//  PhilanthroFeed
//
//  Created by Welles Robinson on 12/28/13.
//  Copyright (c) 2013 Welles Robinson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NeedyPerson : NSObject

@property (nonatomic, strong) NSString *firstName;
@property (nonatomic, strong) NSString *lastName;
@property (nonatomic, strong) NSString *biography;

- (NSString *) getName;

@end
