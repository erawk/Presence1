//
//  PersonListViewController.m
//  Presence
//
//  Created by Ed on 20/07/09.
//  Copyright 2009 Ed Lui. All rights reserved.
//

#import "PersonListViewController.h"


@implementation PersonListViewController

@synthesize persons;

- (void)dealloc {
    [persons release];
    [super dealloc];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
        self.title = @"People";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // create persons array if it doesn't already exist
    if ([self persons] == nil) {
        NSMutableArray *myPersons = [[NSMutableArray alloc] init];
        Person *p = [[Person alloc] initWithImage:[UIImage imageNamed:@"ed_hk_soy_milk.jpg"] name:@"Ed One" status:@"alksdjflkjs" location:@"Hong Kong"];
        [myPersons addObject:p];
        [p release];

        p = [[Person alloc] initWithImage:[UIImage imageNamed:@"ed_trough.jpg"] name:@"Ed Two" status:@"nklmslkdmlkm" location:@"NYC"];
        [myPersons addObject:p];
        [p release];
        
        self.persons = [[NSArray alloc] initWithArray:myPersons];
        [myPersons release];        
    }

    // loop through persons and show what would essentially be a table view
    CGFloat x = 10.0, y = 30.0;
    int i = 0;
    for (Person *p in persons) {
        // add image to loop
        UIImageView *imageView = [[UIImageView alloc] initWithImage:[p image]];
        imageView.contentMode = UIViewContentModeScaleAspectFill;
        imageView.frame = CGRectMake(x, y, 75.0, 75.0);
        [[self view] addSubview:imageView];
        [imageView release];

        // move name label starting at 90px over
        x += 90.0 ;
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(x, y, 90.0, 25.0)];
        label.text = p.name;
        [[self view] addSubview:label];
        [label release];

        // move button starting at 190px over
        x += 90.0;
        UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        
        button.frame = CGRectMake(x, y, 120.0, 25.0);
        [button setTitle:[NSString stringWithFormat:@"View %@", [p name]] forState:UIControlStateNormal];
        [button setTitleColor: [UIColor blueColor] forState:UIControlStateNormal];
        button.tag = i; // provide a tag to key off when we fire the button
        [button addTarget:self action:@selector(showDetailView:) forControlEvents:UIControlEventTouchUpInside];
        [[self view] addSubview:button];

        // reset our x and increment our y and button tag
        x = 10.0;
        y += 150.0;
        i++;
    }
}

- (IBAction)showDetailView:(id)sender {
    int index = (int) [sender tag];
    Person *p = [[self persons] objectAtIndex:index];
    PersonDetailViewController *detailViewController = [[PersonDetailViewController alloc] initWithNibName:@"PersonDetailViewController" bundle:[NSBundle mainBundle]];
    detailViewController.person = p;

    [self.navigationController pushViewController:detailViewController animated:YES];
    [detailViewController release];
}

@end
