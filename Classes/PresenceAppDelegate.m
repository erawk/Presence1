//
//  PresenceAppDelegate.m
//  Presence
//
//  Created by Ed on 20/07/09.
//  Copyright Ed Lui 2009. All rights reserved.
//

#import "PresenceAppDelegate.h"

@implementation PresenceAppDelegate

@synthesize window;
@synthesize navigationController;

- (void)dealloc {
    [navigationController release];
    [window release];
    [super dealloc];
}


- (void)applicationDidFinishLaunching:(UIApplication *)application {    

    // init main nav controller
    navigationController = [[UINavigationController alloc] init];

    // create list view for showing persons
    PersonListViewController *personListViewController = [[PersonListViewController alloc] initWithNibName:@"PersonListViewController" bundle:[NSBundle mainBundle]];
    [navigationController pushViewController:personListViewController animated:YES];
    [personListViewController release];

    [window addSubview:navigationController.view];
    [window makeKeyAndVisible];
}


@end
