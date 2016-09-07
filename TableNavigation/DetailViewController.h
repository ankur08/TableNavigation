//
//  DetailViewController.h
//  TableNavigation
//
//  Created by ankur on 06/09/16.
//  Copyright © 2016 ankur. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *lbl1View;
@property (strong, nonatomic) IBOutlet UILabel *lbl2View;
@property (strong, nonatomic) IBOutlet UIImageView *detailImageView;
@property (strong, nonatomic)UIImageView *detailsimage;
@property (strong, nonatomic) NSString *detailstring;
@property (strong, nonatomic) NSString *detailImage;
@property (strong, nonatomic) NSString *celltextlbl;
@end
