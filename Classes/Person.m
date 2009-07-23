//
//  Person.m
//  Presence
//
//  Created by Ed on 20/07/09.
//  Copyright 2009 Ed Lui. All rights reserved.
//

#import "Person.h"


@implementation Person

@synthesize image, name, status, location;

#pragma mark Initialization methods

- (void)dealloc {
    [super dealloc];
}

- (id)initWithImage:(UIImage *)myImage name:(NSString *)myName status:(NSString *)myStatus location:(NSString *)myLocation {
    if (self = [super init])  {
        self.image = myImage;
        self.name = myName;
        self.status = myStatus;
        self.location = myLocation;
    }

    return self;
}

@end
