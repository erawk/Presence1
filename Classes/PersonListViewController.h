//
//  PersonListViewController.h
//  Presence
//
//  Created by Ed on 20/07/09.
//  Copyright 2009 Ed Lui. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"
#import "PersonDetailViewController.h"


@interface PersonListViewController : UIViewController {
    NSArray *persons;
}

@property (nonatomic, retain) NSArray *persons;

@end
