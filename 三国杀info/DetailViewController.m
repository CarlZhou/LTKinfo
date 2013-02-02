//
//  DetailViewController.m
//  三国杀info
//
//  Created by Zian Zhou on 2013-01-21.
//  Copyright (c) 2013 Zian Zhou. All rights reserved.
//

#import "DetailViewController.h"
#import "LTKData.h"
#import "LTKDoc.h"
#import "fullImageViewController.h"

@interface DetailViewController ()
@property (strong, nonatomic) UIPopoverController *masterPopoverController;
- (void)configureView;
@end

@implementation DetailViewController

@synthesize scrollView,imageView,textView;

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }

    if (self.masterPopoverController != nil) {
        [self.masterPopoverController dismissPopoverAnimated:YES];
    }        
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        
        // set view title
        self.title = self.detailItem.data.title;
        
        // set image view
        self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(-10, -7, 250, 342)];
        [self.imageView setImage:self.detailItem.fullImage];
        UIButton *clickImage = [UIButton buttonWithType:UIButtonTypeCustom];
        [clickImage setBackgroundColor:[UIColor clearColor]];
        [clickImage setFrame:CGRectMake(-10, -7, 250, 342)];
        [clickImage addTarget:self action:@selector(imageClicked) forControlEvents:UIControlEventTouchUpInside];
        [self.imageView addSubview:clickImage];
        self.imageView.userInteractionEnabled = YES;
        [self.scrollView addSubview:self.imageView];
        
        // set 扩展 label
        UILabel *kuozhanLabel = [[UILabel alloc] initWithFrame:CGRectMake(235, 0, 85, 20)];
        [kuozhanLabel setText:@"扩展"];
        [kuozhanLabel setFont:[UIFont fontWithName:@"HelveticaNeue" size:15]];
        [kuozhanLabel setBackgroundColor:[UIColor clearColor]];
        [self.scrollView addSubview:kuozhanLabel];
        // set 扩展 name label
        UILabel *kuozhanNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(235, 20, 85, 20)];
        [kuozhanNameLabel setText:[NSString stringWithFormat:@"%@", [self.detailItem.info objectForKey:@"扩展"]]];
        [kuozhanNameLabel setFont:[UIFont fontWithName:@"HelveticaNeue" size:15]];
        [kuozhanNameLabel setBackgroundColor:[UIColor clearColor]];
        [self.scrollView addSubview:kuozhanNameLabel];
        
        // set 势力 label
        UILabel *shiliLabel = [[UILabel alloc] initWithFrame:CGRectMake(235, 50, 85, 20)];
        [shiliLabel setText:@"势力"];
        [shiliLabel setFont:[UIFont fontWithName:@"HelveticaNeue" size:15]];
        [shiliLabel setBackgroundColor:[UIColor clearColor]];
        [self.scrollView addSubview:shiliLabel];
        // set 势力 name label
        UILabel *shiliNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(235, 70, 85, 20)];
        [shiliNameLabel setText:[NSString stringWithFormat:@"%@", [self.detailItem.info objectForKey:@"势力"]]];
        [shiliNameLabel setFont:[UIFont fontWithName:@"HelveticaNeue" size:15]];
        [shiliNameLabel setBackgroundColor:[UIColor clearColor]];
        [self.scrollView addSubview:shiliNameLabel];
        
        // set 体力 label
        UILabel *tiliLabel = [[UILabel alloc] initWithFrame:CGRectMake(235, 100, 85, 20)];
        [tiliLabel setText:@"体力"];
        [tiliLabel setFont:[UIFont fontWithName:@"HelveticaNeue" size:15]];
        [tiliLabel setBackgroundColor:[UIColor clearColor]];
        [self.scrollView addSubview:tiliLabel];
        // set 体力 name label
        UILabel *tiliNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(235, 120, 85, 20)];
        [tiliNameLabel setText:[NSString stringWithFormat:@"%@", [self.detailItem.info objectForKey:@"体力"]]];
        [tiliNameLabel setFont:[UIFont fontWithName:@"HelveticaNeue" size:15]];
        [tiliNameLabel setBackgroundColor:[UIColor clearColor]];
        [self.scrollView addSubview:tiliNameLabel];
        
        // set 称号 label
        UILabel *chenhaoLabel = [[UILabel alloc] initWithFrame:CGRectMake(235, 150, 85, 20)];
        [chenhaoLabel setText:@"称号:"];
        [chenhaoLabel setFont:[UIFont fontWithName:@"HelveticaNeue" size:15]];
        [chenhaoLabel setBackgroundColor:[UIColor clearColor]];
        [self.scrollView addSubview:chenhaoLabel];
        // set 称号 name label
        UILabel *chenhaoNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(235, 170, 85, 20)];
        [chenhaoNameLabel setText:[NSString stringWithFormat:@"%@", [self.detailItem.info objectForKey:@"称号"]]];
        [chenhaoNameLabel setFont:[UIFont fontWithName:@"HelveticaNeue" size:15]];
        [chenhaoNameLabel setBackgroundColor:[UIColor clearColor]];
        [self.scrollView addSubview:chenhaoNameLabel];
        
        // set 编号 label
        UILabel *bianhaoLabel = [[UILabel alloc] initWithFrame:CGRectMake(235, 200, 85, 20)];
        [bianhaoLabel setText:@"编号"];
        [bianhaoLabel setFont:[UIFont fontWithName:@"HelveticaNeue" size:15]];
        [bianhaoLabel setBackgroundColor:[UIColor clearColor]];
        [self.scrollView addSubview:bianhaoLabel];
        // set 编号 name label
        UILabel *bianhaoNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(235, 220, 85, 20)];
        [bianhaoNameLabel setText:[NSString stringWithFormat:@"%@", [self.detailItem.info objectForKey:@"编号"]]];
        [bianhaoNameLabel setFont:[UIFont fontWithName:@"HelveticaNeue" size:15]];
        [bianhaoNameLabel setBackgroundColor:[UIColor clearColor]];
        [self.scrollView addSubview:bianhaoNameLabel];
        
        // set 战功 label
        UILabel *zhangongLabel = [[UILabel alloc] initWithFrame:CGRectMake(235, 250, 85, 20)];
        [zhangongLabel setText:@"战功"];
        [zhangongLabel setFont:[UIFont fontWithName:@"HelveticaNeue" size:15]];
        [zhangongLabel setBackgroundColor:[UIColor clearColor]];
        [self.scrollView addSubview:zhangongLabel];
        // set 战功 name label
        UILabel *zhangongNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(235, 270, 85, 20)];
        [zhangongNameLabel setText:[NSString stringWithFormat:@"%@", [self.detailItem.info objectForKey:@"战功"]]];
        [zhangongNameLabel setFont:[UIFont fontWithName:@"HelveticaNeue" size:15]];
        [zhangongNameLabel setBackgroundColor:[UIColor clearColor]];
        [self.scrollView addSubview:zhangongNameLabel];
        
        // set 武将小传 label for text view
        UILabel *wujiangxiaozhuanTextViewLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 355, self.view.frame.size.width-15, 30)];
        [wujiangxiaozhuanTextViewLabel setText:@"武将小传"];
        [wujiangxiaozhuanTextViewLabel setFont:[UIFont fontWithName:@"HelveticaNeue" size:30]];
        [wujiangxiaozhuanTextViewLabel setBackgroundColor:[UIColor clearColor]];
        [self.scrollView addSubview:wujiangxiaozhuanTextViewLabel];
        // set text view for 武将小传
        self.textView = [[UITextView alloc] initWithFrame:CGRectMake(7.5, 400, self.view.frame.size.width-15, 300)];
        [self.textView setFont:[UIFont fontWithName:@"HelveticaNeue-Light" size:17]];
        [textView setText:[self.detailItem.info objectForKey:@"武将小传"]];
        self.textView.editable = NO;
        [self.scrollView addSubview:self.textView];
        
        // set 卡牌配文 label for text view
        UILabel *kapaipeiwenTextViewLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 715, self.view.frame.size.width-15, 30)];
        [kapaipeiwenTextViewLabel setText:@"卡牌配文"];
        [kapaipeiwenTextViewLabel setFont:[UIFont fontWithName:@"HelveticaNeue" size:30]];
        [kapaipeiwenTextViewLabel setBackgroundColor:[UIColor clearColor]];
        [self.scrollView addSubview:kapaipeiwenTextViewLabel];
        // set text view for 卡牌配文
        UITextView *kapaipeiwenTextView = [[UITextView alloc] initWithFrame:CGRectMake(7.5, 760, self.view.frame.size.width-15, 40)];
        [kapaipeiwenTextView setFont:[UIFont fontWithName:@"HelveticaNeue-Light" size:17]];
        [kapaipeiwenTextView setText:[self.detailItem.info objectForKey:@"卡牌配文"]];
        kapaipeiwenTextView.editable = NO;
        [self.scrollView addSubview:kapaipeiwenTextView];
        
        // set 武将技 label for text view
        UILabel *wujiangjiTextViewLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 815, self.view.frame.size.width-15, 30)];
        [wujiangjiTextViewLabel setText:@"武将技"];
        [wujiangjiTextViewLabel setFont:[UIFont fontWithName:@"HelveticaNeue" size:30]];
        [wujiangjiTextViewLabel setBackgroundColor:[UIColor clearColor]];
        [self.scrollView addSubview:wujiangjiTextViewLabel];
        // set text view for 武将技
        UITextView *wujiangjiTextView = [[UITextView alloc] initWithFrame:CGRectMake(7.5, 860, self.view.frame.size.width-15, 230)];
        [wujiangjiTextView setFont:[UIFont fontWithName:@"HelveticaNeue-Light" size:17]];
        [wujiangjiTextView setText:[self.detailItem.info objectForKey:@"武将技"]];
        wujiangjiTextView.editable = NO;
        [self.scrollView addSubview:wujiangjiTextView];
        
        // set 武将台词 label for text view
        UILabel *wujiangtaiciTextViewLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 1105, self.view.frame.size.width-15, 30)];
        [wujiangtaiciTextViewLabel setText:@"武将台词"];
        [wujiangtaiciTextViewLabel setFont:[UIFont fontWithName:@"HelveticaNeue" size:30]];
        [wujiangtaiciTextViewLabel setBackgroundColor:[UIColor clearColor]];
        [self.scrollView addSubview:wujiangtaiciTextViewLabel];
        // set text view for 武将台词
        UITextView *wujiangtaiciTextView = [[UITextView alloc] initWithFrame:CGRectMake(7.5, 1150, self.view.frame.size.width-15, 120)];
        [wujiangtaiciTextView setFont:[UIFont fontWithName:@"HelveticaNeue-Light" size:17]];
        [wujiangtaiciTextView setText:[self.detailItem.info objectForKey:@"武将台词"]];
        wujiangtaiciTextView.editable = NO;
        [self.scrollView addSubview:wujiangtaiciTextView];
        
        // set FAQ label for text view
        UILabel *FAQTextViewLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 1285, self.view.frame.size.width-15, 30)];
        [FAQTextViewLabel setText:@"FAQ"];
        [FAQTextViewLabel setFont:[UIFont fontWithName:@"HelveticaNeue" size:30]];
        [FAQTextViewLabel setBackgroundColor:[UIColor clearColor]];
        [self.scrollView addSubview:FAQTextViewLabel];
        // set text view for FAQ
        UITextView *FAQTextView = [[UITextView alloc] initWithFrame:CGRectMake(7.5, 1330, self.view.frame.size.width-15, 450)];
        [FAQTextView setFont:[UIFont fontWithName:@"HelveticaNeue-Light" size:17]];
        [FAQTextView setText:[self.detailItem.info objectForKey:@"FAQ"]];
        FAQTextView.editable = NO;
        [self.scrollView addSubview:FAQTextView];
    }
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // set scrollView
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 1500)];
    [self.scrollView setBackgroundColor:[UIColor whiteColor]];
    self.scrollView.scrollEnabled = YES;
    self.scrollView.userInteractionEnabled = YES;
    [self.scrollView setContentSize:CGSizeMake(self.view.frame.size.width, 1800)];
    // #EDEDED
    [self.scrollView setBackgroundColor:[UIColor colorWithRed:0.929 green:0.929 blue:0.929 alpha:1]];
    

	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
    
    

    self.view = scrollView;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)imageClicked
{
    fullImageViewController *fullImageView = [[fullImageViewController alloc] init];
    fullImageView.fullImage = self.detailItem.fullImage;
    [self presentViewController:fullImageView animated:YES completion:nil];
}

#pragma mark - Split view

- (void)splitViewController:(UISplitViewController *)splitController willHideViewController:(UIViewController *)viewController withBarButtonItem:(UIBarButtonItem *)barButtonItem forPopoverController:(UIPopoverController *)popoverController
{
    barButtonItem.title = NSLocalizedString(@"Master", @"Master");
    [self.navigationItem setLeftBarButtonItem:barButtonItem animated:YES];
    self.masterPopoverController = popoverController;
}

- (void)splitViewController:(UISplitViewController *)splitController willShowViewController:(UIViewController *)viewController invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem
{
    // Called when the view is shown again in the split view, invalidating the button and popover controller.
    [self.navigationItem setLeftBarButtonItem:nil animated:YES];
    self.masterPopoverController = nil;
}

@end
