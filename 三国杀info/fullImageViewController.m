//
//  fullImageViewController.m
//  三国杀info
//
//  Created by Zian Zhou on 2013-01-28.
//  Copyright (c) 2013 Zian Zhou. All rights reserved.
//

#import "fullImageViewController.h"
#import "AppDelegate.h"
#import "DataUtil.h"

@interface fullImageViewController ()

@end

@implementation fullImageViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[UIApplication sharedApplication] setStatusBarHidden:NO withAnimation:UIStatusBarAnimationFade];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(-10, -30, self.view.frame.size.width+20, self.view.frame.size.height+20)];
    [imageView setImage:self.fullImage];
    [self.view addSubview:imageView];
    
    UITapGestureRecognizer *singleFingerTap =
    [[UITapGestureRecognizer alloc] initWithTarget:self
                                            action:@selector(quitPressed)];
    [self.view addGestureRecognizer:singleFingerTap];
    
    [self swipeRight];
    
	// Do any additional setup after loading the view.
}

- (void)quitPressed
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)swipeRight
{
    NSLog(@"%@", [[DataUtil sharedInstance] getCharacters]);
}

- (void)viewDidAppear:(BOOL)animated
{
    [[UIApplication sharedApplication] setStatusBarHidden:YES withAnimation:UIStatusBarAnimationFade];
}

@end
