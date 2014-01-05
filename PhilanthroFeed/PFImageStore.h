//
//  PFImageStore.h
//  PhilanthroFeed
//
//  Created by Welles Robinson on 1/5/14.
//  Copyright (c) 2014 Welles Robinson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PFImageStore : NSObject
{
    NSMutableDictionary *dictionary;
}
+ (PFImageStore *)sharedStore;

- (void)setImage:(UIImage *)i forKey:(NSString *)s;
- (UIImage *)imageForKey:(NSString *)s;
- (void)deleteImageForKey:(NSString *)s;
@end
