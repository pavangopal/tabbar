//
//  SimpleTableCell.m
//  tabbar
//
//  Created by Pavan Gopal on 30/09/15.
//  Copyright © 2015 Pavan Gopal. All rights reserved.
//

#import "SimpleTableCell.h"

@implementation SimpleTableCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)layoutSubviews
{
    
    [_jobLoc sizeToFit];
    _jobLoc.frame = CGRectMake(_jobExp.frame.origin.x + _jobExp.frame.size.width + 10, _jobExp.frame.origin.y, _jobLoc.frame.size.width + 10, _jobLoc.frame.size.height + 6);
    _jobLoc.layer.cornerRadius = 5;
    _jobLoc.clipsToBounds = YES;
    
    CGRect rect = _time.frame;
    rect.origin.x = self.frame.size.width - 100;
    _time.frame = rect;
//    _jobTitle.frame=CGRectMake(_jobTitle.frame.origin.x, _jobTitle.frame.origin.y, _jobTitle.frame.size.width+5, _jobTitle.frame.size.height+5);
//    
   // _time.frame = CGRectMake(self.frame.size.width - 100, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>)
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
