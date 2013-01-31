//
//  MasterViewController.h
//  三国杀info
//
//  Created by Zian Zhou on 2013-01-21.
//  Copyright (c) 2013 Zian Zhou. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;
@property (strong, nonatomic) NSMutableArray *characters;

@end
