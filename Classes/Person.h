//
//  Person.h
//  Presence
//
//  Created by Ed on 20/07/09.
//  Copyright 2009 Ed Lui. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Person : NSObject {
    UIImage *image;
    NSString *name;
    NSString *status;
    NSString *location;
}

@property (nonatomic, retain) IBOutlet UIImage *image;
@property (nonatomic, retain) IBOutlet NSString *name;
@property (nonatomic, retain) IBOutlet NSString *status;
@property (nonatomic, retain) IBOutlet NSString *location;

- (id)initWithImage:(UIImage *)myImage name:(NSString *)myName status:(NSString *)myStatus location:(NSString *)myLocation;

@end
