//
//  PresenceAppDelegate.h
//  Presence
//
//  Created by Ed on 20/07/09.
//  Copyright Ed Lui 2009. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PersonListViewController.h"

@interface PresenceAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end

