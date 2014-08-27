//
//  YoutubeTableViewController.h
//  PartyAnimal
//
//  Created by Joe on 8/26/14.
//  Copyright (c) 2014 Victoire. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YoutubeTableViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UITableView *VideoTableView;

@end
