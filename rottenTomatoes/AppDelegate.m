//
//  AppDelegate.m
//  rottenTomatoes
//
//  Created by Rose Marie Philip on 2/4/15.
//  Copyright (c) 2015 Rose Marie Philip. All rights reserved.
//

#import "AppDelegate.h"
#import "MoviesViewController.h"
#import "SVProgressHUD.h"

@interface AppDelegate ()

- (void)startLoading:(MoviesViewController*)vc;
- (void)loadInBackground:(MoviesViewController*)vc;
- (void)finishedLoading:(MoviesViewController*)vc;
- (void)showErr:(MoviesViewController*)vc;

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    MoviesViewController *vc = [[MoviesViewController alloc] init];
    
    [self.window makeKeyAndVisible];

    [self startLoading:vc];
    return YES;
}

- (void) startLoading:(MoviesViewController*)vc {
    [SVProgressHUD showWithStatus:@"Loading.."];
    [self performSelectorInBackground:@selector(loadInBackground:) withObject:vc];
}

- (void) loadInBackground:(MoviesViewController*)vc {
    NSURL *url = [NSURL URLWithString:@"http://api.rottentomatoes.com/api/public/v1.0/lists/movies/box_office.json?apikey=vy7dgqjrfyqrq39jfp7er2vv&limit=20&country=us"];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
        if (connectionError != nil) {
            [SVProgressHUD dismiss];
            [self performSelectorOnMainThread:@selector(showErr:) withObject:vc waitUntilDone:NO];
            return;
        }
        NSDictionary *responseDictionary = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        
        vc.movies = responseDictionary[@"movies"];
        [SVProgressHUD dismiss];
        [self performSelectorOnMainThread:@selector(finishedLoading:) withObject:vc waitUntilDone:NO];

    }];
    }

- (void) showErr:(MoviesViewController*)vc {
    vc.networkErr = YES;
    UINavigationController *nvc = [[UINavigationController alloc] initWithRootViewController:vc];
    self.window.rootViewController = nvc;
    [self.window makeKeyAndVisible];
}

- (void)finishedLoading:(MoviesViewController*)vc {
    vc.networkErr = NO;
    UINavigationController *nvc = [[UINavigationController alloc] initWithRootViewController:vc];
    self.window.rootViewController = nvc;
    [self.window makeKeyAndVisible];
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
