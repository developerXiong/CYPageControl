//
//  ViewController.m
//  CYPageControl
//
//  Created by jeader on 16/5/18.
//  Copyright © 2016年 jeader. All rights reserved.
//

#import "ViewController.h"

#import "CYPageControl.h"

@interface ViewController ()

@property (nonatomic, weak)CYPageControl *pageControl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    CYPageControl *pageControl = [[CYPageControl alloc] initWithFrame:CGRectMake(150, 300, 80, 30)];
    pageControl.numberOfPages = 5;
    pageControl.currentCount = 0;
    pageControl.pageSize = CGSizeMake(5, 5);
    [self.view addSubview:pageControl];
    _pageControl = pageControl;
    
}

- (IBAction)click:(id)sender {
    
    if (_pageControl.currentCount==4) return;
    _pageControl.currentCount ++;
    
}

- (IBAction)sub:(id)sender {
    
    if (_pageControl.currentCount==0) return;
    _pageControl.currentCount --;
    
}


@end
