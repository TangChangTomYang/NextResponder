//
//  ViewController.m
//  NextResponder
//
//  Created by yangrui on 2020/4/8.
//  Copyright © 2020 yangrui. All rights reserved.
//

#import "ViewController.h"
#import "UIView+NextResponder.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
}

- (IBAction)btnFindVC:(UIButton *)btn {
    [btn  viewController].view.backgroundColor = [UIColor cyanColor];
}

- (IBAction)btnInViewFindVC:(UIButton *)btn {
     [btn  viewController].view.backgroundColor = [UIColor purpleColor];
}

@end
