//
//  DetailViewController.h
//  三国杀info
//
//  Created by Zian Zhou on 2013-01-21.
//  Copyright (c) 2013 Zian Zhou. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LTKDoc;

@interface DetailViewController : UIViewController <UISplitViewControllerDelegate, UIScrollViewDelegate, UITextViewDelegate>
{
    UIScrollView *scrollView;
    UIImageView *imageView;
    UITextView *textView;
}

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@property (strong, nonatomic) LTKDoc * detailItem;

@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UITextView *textView;

@end
