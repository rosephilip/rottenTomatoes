//
//  MovieDetailViewController.h
//  rottenTomatoes
//
//  Created by Rose Marie Philip on 2/7/15.
//  Copyright (c) 2015 Rose Marie Philip. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MovieDetailViewController : UIViewController <UIGestureRecognizerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;
@property (weak, nonatomic) IBOutlet UIImageView *posterView;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@property (nonatomic, strong) NSDictionary *movie;

@end
