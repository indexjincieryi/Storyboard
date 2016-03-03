//
//  FirstViewController.m
//  Storyboard
//
//  Created by NDMAC on 16/2/29.
//  Copyright © 2016年 NDEducation. All rights reserved.
//

#import "FirstViewController.h"

#import "OneViewController.h"
#import "TwoViewController.h"
#import "NDControllerManager.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)oneClick:(UIButton *)sender {
    OneViewController *oneViewController = [[NDControllerManager storyOfOne] instantiateViewControllerWithIdentifier:@"OneViewControllerID"];
    [self.navigationController pushViewController:oneViewController animated:YES];
}

- (IBAction)twoClick:(UIButton *)sender {
    TwoViewController *twoViewController = [[NDControllerManager storyOfTwo] instantiateViewControllerWithIdentifier:@"TwoViewControllerID"];
    [self.navigationController pushViewController:twoViewController animated:YES];
}

@end
