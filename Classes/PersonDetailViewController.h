//
//  PersonDetailViewController.h
//  Presence
//
//  Created by Ed on 21/07/09.
//  Copyright 2009 Ed Lui. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"

@interface PersonDetailViewController : UIViewController {
    Person *person;
    UIImageView *imageView;
    UILabel *status;
    UILabel *name;
}

@property (nonatomic, retain) IBOutlet Person *person;
@property (nonatomic, retain) IBOutlet UIImageView *imageView;
@property (nonatomic, retain) IBOutlet UILabel *status;
@property (nonatomic, retain) IBOutlet UILabel *name;

@end
