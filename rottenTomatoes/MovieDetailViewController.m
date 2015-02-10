//
//  MovieDetailViewController.m
//  rottenTomatoes
//
//  Created by Rose Marie Philip on 2/7/15.
//  Copyright (c) 2015 Rose Marie Philip. All rights reserved.
//

#import "MovieDetailViewController.h"
#import "UIImageView+AFNetworking.h"

@interface MovieDetailViewController ()

@end

@implementation MovieDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.titleLabel.text = [NSString stringWithFormat:@"%@ (%@)", self.movie[@"title"], self.movie[@"year"]];
    self.synopsisLabel.text = self.movie[@"synopsis"];
    [self.synopsisLabel sizeToFit];
    self.scrollView.contentSize = CGSizeMake(320, 1000);
 
    NSString *posterURL = [self.movie valueForKeyPath:@"posters.thumbnail"];
    [self.posterView setImageWithURL:[NSURL URLWithString:posterURL]];
    posterURL = [posterURL stringByReplacingOccurrencesOfString:@"tmb" withString:@"ori"];
    [self.posterView setImageWithURL:[NSURL URLWithString:posterURL]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
