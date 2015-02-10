//
//  MoviesViewController.h
//  rottenTomatoes
//
//  Created by Rose Marie Philip on 2/4/15.
//  Copyright (c) 2015 Rose Marie Philip. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MoviesViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate>

@property (nonatomic, strong) NSMutableArray *movies;
@property (nonatomic, strong) NSMutableArray *filteredMovies;
@property (weak, nonatomic) IBOutlet UIView *errorView;
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@property (nonatomic, assign) BOOL networkErr;
@property BOOL isFiltered;

@end
