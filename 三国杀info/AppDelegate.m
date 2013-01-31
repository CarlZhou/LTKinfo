//
//  AppDelegate.m
//  三国杀info
//
//  Created by Zian Zhou on 2013-01-21.
//  Copyright (c) 2013 Zian Zhou. All rights reserved.
//

#import "AppDelegate.h"
#import "MasterViewController.h"
#import "LTKDoc.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
        UISplitViewController *splitViewController = (UISplitViewController *)self.window.rootViewController;
        UINavigationController *navigationController = [splitViewController.viewControllers lastObject];
        splitViewController.delegate = (id)navigationController.topViewController;
    }
    
    LTKDoc *caocao = [[LTKDoc alloc] initWithTitle:@"曹操" rating:0 thumbImage:[UIImage imageNamed:@"caocao.jpg"] fullImage:[UIImage imageNamed:@"曹操.png"]];
    LTKDoc *guojia = [[LTKDoc alloc] initWithTitle:@"郭嘉" rating:0 thumbImage:[UIImage imageNamed:@"guojia.jpg"] fullImage:[UIImage imageNamed:@"郭嘉.png"]];
    LTKDoc *liubei = [[LTKDoc alloc] initWithTitle:@"刘备" rating:0 thumbImage:[UIImage imageNamed:@"liubei.jpg"] fullImage:[UIImage imageNamed:@"刘备.png"]];
    LTKDoc *simayi = [[LTKDoc alloc] initWithTitle:@"司马懿" rating:0 thumbImage:[UIImage imageNamed:@"simayi.jpg"] fullImage:[UIImage imageNamed:@"司马懿.png"]];
    LTKDoc *xiahoudun = [[LTKDoc alloc] initWithTitle:@"夏侯惇" rating:0 thumbImage:[UIImage imageNamed:@"xiahoudun.jpg"] fullImage:[UIImage imageNamed:@"夏侯惇.png"]];
    LTKDoc *xuchu = [[LTKDoc alloc] initWithTitle:@"许褚" rating:0 thumbImage:[UIImage imageNamed:@"xuchu.jpg"] fullImage:[UIImage imageNamed:@"许诸.png"]];
    LTKDoc *zhangliao = [[LTKDoc alloc] initWithTitle:@"张辽" rating:0 thumbImage:[UIImage imageNamed:@"zhangliao.jpg"] fullImage:[UIImage imageNamed:@"张辽.png"]];
    LTKDoc *zhenji = [[LTKDoc alloc] initWithTitle:@"甄姬" rating:0 thumbImage:[UIImage imageNamed:@"zhenji.jpg"] fullImage:[UIImage imageNamed:@"甄姬.png"]];
    
    NSMutableArray *characters = [NSMutableArray arrayWithObjects:caocao,guojia,liubei,simayi,xiahoudun,xuchu,zhangliao,zhenji, nil];
    
    UINavigationController * navController = (UINavigationController *) self.window.rootViewController;
    navController.navigationBar.tintColor = [UIColor grayColor];
    MasterViewController * masterController = [navController.viewControllers objectAtIndex:0];
    masterController.characters = characters;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
