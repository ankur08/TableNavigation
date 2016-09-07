//
//  ViewController.h
//  TableNavigation
//
//  Created by ankur on 06/09/16.
//  Copyright © 2016 ankur. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate , UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

