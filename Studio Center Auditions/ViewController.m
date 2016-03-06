//
//  ViewController.m
//  Studio Center Auditions
//
//  Created by Robert McDowell on 3/4/16.
//  Copyright © 2016 Robert McDowell. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Load the url into the webview
    NSURL *url = [NSURL URLWithString:@"http://studiocenterauditions.com"];
    [self.webView loadRequest:[NSURLRequest requestWithURL:url]];
    
    // allow media playback
    self.webView.mediaPlaybackRequiresUserAction = NO;
    
    // prevent user entry zoom
    UIScrollView *scrollView = [self.webView.subviews objectAtIndex:0];
    scrollView.delegate = self;
    
}

-(UIView*)viewForZoomingInScrollView:(UIScrollView*)scrollView {
    return nil;
}

- (void)viewDidLayoutSubviews {
    self.webView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
} // Dispose of any resources that can be recreated.


@end
