//
//  DetailViewController.m
//  TableNavigation
//
//  Created by ankur on 06/09/16.
//  Copyright © 2016 ankur. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%@",self.detailstring);
    // Do any additional setup after loading the view.
//    NSDictionary *dictionary = [NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"DetailsList" ofType:@"plist"]];
//    NSLog(@"dictionary = %@", dictionary);
//    NSArray *array = [dictionary objectForKey:@"Values"];
//    NSLog(@"array = %@", array);
    self.lbl1View.text = self.celltextlbl;
    self.lbl2View.text = self.detailstring;
    [self.detailImageView setImage:[UIImage imageNamed:self.detailImage]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
