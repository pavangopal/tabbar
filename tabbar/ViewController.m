//
//  ViewController.m
//  tableView2
//
//  Created by Pavan Gopal on 24/09/15.
//  Copyright © 2015 Pavan Gopal. All rights reserved.
//

#import "ViewController.h"
#import "SimpleTableCell.h"

@interface ViewController ()
@property NSArray *tableData;
@property NSMutableArray *selectedIndices;
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    _tableData = @[@"Android Developer",@"iOS Developer",@"Back-End developer",@"UI Developer",@"Windows Developer"];
    
    [self.tableView registerNib:[UINib nibWithNibName:@"SimpleTableCell" bundle:nil] forCellReuseIdentifier:@"SimpleTableCell"];
    
    
    self.tableView.dataSource=self;
    self.tableView.delegate = self;
    
    _selectedIndices = [NSMutableArray new];
    
    // Do any additional setup after loading the view, typically from a nib.
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return ([self.tableData count]*2);
}



//-(NSString *)tableView:(UITableView *) tableView titleForHeaderInSection:(NSInteger)section{
//
//    return [NSString stringWithFormat:@"Section#%ld",section+1];
//
//}


//-(NSString *)tableView:(UITableView *) tableView titleForFooterInSection:(NSInteger)section
//{
//
//    return [NSString stringWithFormat:@"End section#%ld",section+1];
//
//}
//


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableCell";
    
    SimpleTableCell *cell = (SimpleTableCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"SimpleTableCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    cell.jobTitle.text = [_tableData objectAtIndex:arc4random()%5];
    
    cell.imageIcon.tag = indexPath.row;
    if ([_selectedIndices containsObject:@(indexPath.row)])
    {
        [cell.imageIcon setImage:[UIImage imageNamed:@"Star Filled-100.png"] forState:UIControlStateNormal];
    }
    else
    {
        [cell.imageIcon setImage:[UIImage imageNamed:@"Star-100 (1).png"] forState:UIControlStateNormal];
    }
    [cell.imageIcon addTarget:self action:@selector(yourButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    cell.time.text = @"2 hours ago";
    cell.jobLoc.text=@"BANGALORE";
    cell.jobExp.text=@"0-2 years exp";
    
    cell.jobDes.text=@"Description of the job";
    
    return cell;
}



-(void)yourButtonClicked:(UIButton*)sender
{
    
    UIButton *button = sender;
    NSNumber *index = @(button.tag);
    if ([_selectedIndices containsObject:index])
    {
        [sender setImage:[UIImage imageNamed:@"Star-100 (1).png"] forState:UIControlStateNormal];
        [_selectedIndices removeObject:index];
    }
    else
    {
        [sender setImage:[UIImage imageNamed:@"Star Filled-100.png"] forState:UIControlStateNormal];
        [_selectedIndices addObject:index];
    }
    
    
    
}

- (IBAction)allJObs:(id)sender{
    
    
    UISegmentedControl * ctrl=(UISegmentedControl*)sender;
    if([ctrl selectedSegmentIndex]==0)
    { 
        _tableData = [NSArray arrayWithObjects:@"Android Developer",@"iOS Developer",@"Back-End developer",@"UI Developer",@"Windows Developer", nil];
        NSLog(@"All jobs");
    }
    else 
    if([ctrl selectedSegmentIndex]==1)
    {
        _tableData = [NSArray arrayWithObjects:@"Python Developer", @"Android Developer",@"iOS Developer",@"Back-End developer",@"UI Developer",@"Windows Developer", nil];
        NSLog(@"Applied jobs");
    }
    
    [self.tableView reloadData];
}
//    _tableData = [NSArray arrayWithObjects:@"Android Developer",@"iOS Developer",@"Back-End developer",@"UI Developer",@"Windows Developer", nil];
//    
//    [self.tableView registerNib:[UINib nibWithNibName:@"SimpleTableCell" bundle:nil] forCellReuseIdentifier:@"SimpleTableCell"];
//    
//    
//   
//    self.sectionData=[[NSMutableArray alloc]init];
//    
//    for(int i=0;i<1;i++)
//    {
//        NSMutableArray *sectionString=[[NSMutableArray alloc]init];
//        for(int j=0;j<(i+1)*7;j++)
//        {
//            NSString *sectionRow=[NSString stringWithFormat:@"Row#%d",j+1];
//            [sectionString addObject:sectionRow];
//        }
//        
//        [self.sectionData addObject:sectionString];
//    }
    






//
//- (IBAction)appliedJob:(id)sender {
//    
//    [self viewDidLoad];
////    _tableData = [NSArray arrayWithObjects:@"Android Developer",@"iOS Developer",@"Back-End developer",@"UI Developer",@"Windows Developer", nil];
////    
////    [self.tableView registerNib:[UINib nibWithNibName:@"SimpleTableCell" bundle:nil] forCellReuseIdentifier:@"SimpleTableCell"];
////    
////    
////    self.tableView.dataSource=self;
////    self.tableView.delegate = self;
////    self.sectionData=[[NSMutableArray alloc]init];
////    
////    for(int i=0;i<1;i++)
////    {
////        NSMutableArray *sectionString=[[NSMutableArray alloc]init];
////        for(int j=0;j<(i+1)*7;j++)
////        {
////            NSString *sectionRow=[NSString stringWithFormat:@"Row#%d",j+1];
////            [sectionString addObject:sectionRow];
////        }
////        
////        [self.sectionData addObject:sectionString];
////    }
//    
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 78;
}

@end
