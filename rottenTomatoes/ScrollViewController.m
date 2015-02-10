//
//  ScrollViewController.m
//  rottenTomatoes
//
//  Created by Rose Marie Philip on 2/8/15.
//  Copyright (c) 2015 Rose Marie Philip. All rights reserved.
//

#import "ScrollViewController.h"
#import "UIImageView+AFNetworking.h"

@interface ScrollViewController ()

@end

@implementation ScrollViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.titleLabel.text = self.movie[@"title"];
    self.synopsisLabel.text = self.movie[@"synopsis"];
    self.scrollView.contentSize = CGSizeMake(320, 1000);
    
   /* NSLog(@"HERE");
    NSDictionary *dic = self.movie[@"posters"];
    NSString *str = dic[@"thumbnail"];
    NSLog(@"%@",str);*/
    NSString *posterURL = [self.movie valueForKeyPath:@"posters.thumbnail"];
    NSLog(@"%@",posterURL);
    [self.posterView setImageWithURL:[NSURL URLWithString:posterURL]];
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
