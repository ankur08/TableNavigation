//
//  ViewController.m
//  TableNavigation
//
//  Created by ankur on 06/09/16.
//  Copyright © 2016 ankur. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"
#import "DetailViewController.h"
@interface ViewController ()
{
    NSArray *tableData;
    NSArray *thumbnails;
    NSData *imageData;
    NSArray *array;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    tableData = [NSArray arrayWithObjects:@"SuperHero", @"SuperHero", @"SuperHero", @"SuperHero", @"SuperHero", @"SuperHero", @"SuperHero", @"SuperHero", @"SuperHero", nil];

    thumbnails = [NSArray arrayWithObjects:@"1.png", @"2.png", @"3.png", @"4.png", @"5.png", @"6.png", @"7.png", @"8.png", @"9.png",nil];
    
    NSDictionary *dictionary = [NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"DetailsList" ofType:@"plist"]];
    NSLog(@"dictionary = %@", dictionary);
    array = [dictionary objectForKey:@"Values"];
    NSLog(@"array = %@", array);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return tableData.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle]loadNibNamed:@"TableViewCell" owner:self options:nil];
        cell  = [nib objectAtIndex:0];
    }
    cell.ImageView.image = [UIImage imageNamed:[thumbnails objectAtIndex:indexPath.row]];
    cell.lblView.text = [tableData objectAtIndex:indexPath.row];
    return cell ;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 72;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *passdata = [array  objectAtIndex:indexPath.row];
    NSString *cellText = [tableData objectAtIndex:indexPath.row];
    NSString *passImage = [NSString stringWithFormat:@"%ld.png",indexPath.row +1];
    //UIImage *image1 = [thumbnails objectAtIndex:indexPath.row];
    DetailViewController *details = [self.storyboard instantiateViewControllerWithIdentifier:@"Detail"];
    details.detailstring=passdata;
    details.detailImage = passImage;
    details.celltextlbl = cellText;
    //details.detailsimage.image= [thumbnails objectAtIndex:indexPath.row];
    [self.navigationController pushViewController:details animated:YES];
    
    
}
@end
