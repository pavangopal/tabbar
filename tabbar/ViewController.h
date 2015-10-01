//
//  ViewController.h
//  tabbar
//
//  Created by Pavan Gopal on 25/09/15.
//  Copyright © 2015 Pavan Gopal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UISegmentedControl *allJobs;

- (IBAction)allJObs:(id)sender;


@end

