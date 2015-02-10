//
//  ScrollViewController.h
//  rottenTomatoes
//
//  Created by Rose Marie Philip on 2/8/15.
//  Copyright (c) 2015 Rose Marie Philip. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScrollViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *posterView;
@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;
@property (nonatomic, strong) NSDictionary *movie;

@end
