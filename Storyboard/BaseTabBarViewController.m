//
//  BaseTabBarViewController.m
//  Storyboard
//
//  Created by NDMAC on 16/2/29.
//  Copyright © 2016年 NDEducation. All rights reserved.
//

#import "BaseTabBarViewController.h"

#import "NDControllerManager.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourthViewController.h"

@interface BaseTabBarViewController ()

@end

@implementation BaseTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initViewControllersWithSB];
    [self initTabBarItems];
}

- (void)initTabBarItems
{
    //3个数组
    NSArray*titleArray=@[@"First",@"Second",@"Third",@"Fourth"];
    NSArray*selectImageNameArray=@[@"icon1S",@"icon2S",@"icon3S",@"icon4S",];
    NSArray*UnselectImageNameArray=@[@"icon1",@"icon2",@"icon3",@"icon4",];
    
    for (int i=0; i<self.tabBar.items.count; i++) {
        UITabBarItem*item=self.tabBar.items[i];
        if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0) {
            //需要对图片进行单独处理
            UIImage*selectImage=[UIImage imageNamed:selectImageNameArray[i]];
            selectImage=[selectImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
            UIImage*unSelectImage=[UIImage imageNamed:UnselectImageNameArray[i]];
            unSelectImage=[unSelectImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
            
            //以上是防止在bar上显示为阴影而不是图片
            item.selectedImage=selectImage;
            item.image=unSelectImage;
            item.title=titleArray[i];
            item.tag = i;
        }else{
            item.title = titleArray[i];
            item.image = [UIImage imageNamed:UnselectImageNameArray[i]];
            item.selectedImage = [UIImage imageNamed:selectImageNameArray[i]];
        }
    }
    
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0) {
        [[UITabBarItem appearance]setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor blackColor]} forState:UIControlStateSelected];
    }else{
        [[UITabBarItem appearance]setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor blackColor]} forState:UIControlStateSelected];
    }

}

-(void)initViewControllersWithSB
{
    FirstViewController *firstViewController = [[NDControllerManager storyOfFirstViewController] instantiateViewControllerWithIdentifier:@"FirstViewControllerID"];
    UINavigationController *firstNavigation = [[UINavigationController alloc] initWithRootViewController:firstViewController];
    
    SecondViewController *secondViewController = [[NDControllerManager storyOfSecondViewController] instantiateViewControllerWithIdentifier:@"SecondViewControllerID"];
    UINavigationController *secondNavigation = [[UINavigationController alloc] initWithRootViewController:secondViewController];
    
    ThirdViewController *thirdViewController = [[NDControllerManager storyOfThirdViewController] instantiateViewControllerWithIdentifier:@"ThirdViewControllerID"];
    UINavigationController *thirdNavigation = [[UINavigationController alloc] initWithRootViewController:thirdViewController];
    
    FourthViewController *fourthViewController = [[NDControllerManager storyOfFourthViewController] instantiateViewControllerWithIdentifier:@"FourthViewControllerID"];
    UINavigationController *fourthNavigation = [[UINavigationController alloc] initWithRootViewController:fourthViewController];
    
    self.viewControllers = @[firstNavigation,secondNavigation,thirdNavigation,fourthNavigation];
}

@end
