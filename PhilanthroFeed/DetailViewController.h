//
//  DetailViewController.h
//  PhilanthroFeed
//
//  Created by Welles Robinson on 1/2/14.
//  Copyright (c) 2014 Welles Robinson. All rights reserved.
//

#import <UIKit/UIKit.h>
@class NeedyPerson;

@interface DetailViewController : UIViewController
{
    __weak IBOutlet UILabel *bioLabel;
    __weak IBOutlet UILabel *firstNameLabel;
    __weak IBOutlet UILabel *lastNameLabel;
    __weak IBOutlet UIImageView *imageView;
}
@property NeedyPerson *person;

@end
