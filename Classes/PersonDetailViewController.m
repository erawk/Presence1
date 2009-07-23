//
//  PersonDetailViewController.m
//  Presence
//
//  Created by Ed on 21/07/09.
//  Copyright 2009 Ed Lui. All rights reserved.
//

#import "PersonDetailViewController.h"


@implementation PersonDetailViewController

@synthesize person, imageView, status, name;

- (void)dealloc {
    [imageView release];
    [status release];
    [name release];
    [person release];
    [super dealloc];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        self.title = @"Person";
    }
    return self;
}

- (void)viewDidLoad {
    [[self imageView] setImage:[person image]];
    [[self status] setText:[person status]];
    [[self name] setText:[person name]];
}

@end
