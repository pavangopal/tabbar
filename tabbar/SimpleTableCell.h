//
//  SimpleTableCell.h
//  tabbar
//
//  Created by Pavan Gopal on 30/09/15.
//  Copyright © 2015 Pavan Gopal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleTableCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIButton *imageIcon;
@property (weak, nonatomic) IBOutlet UILabel *jobTitle;

@property (weak, nonatomic) IBOutlet UILabel *jobDes;
@property (weak, nonatomic) IBOutlet UILabel *jobExp;
@property (weak, nonatomic) IBOutlet UILabel *jobLoc;
@property (weak, nonatomic) IBOutlet UILabel *time;
@property (weak, nonatomic) IBOutlet UILabel *colorHint;
@property (weak, nonatomic) IBOutlet UIView *SimpleCell;

@end
