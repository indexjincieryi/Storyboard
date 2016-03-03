//
//  NDControllerManager.m
//  Storyboard
//
//  Created by NDMAC on 16/2/29.
//  Copyright © 2016年 NDEducation. All rights reserved.
//

#import "NDControllerManager.h"

@implementation NDControllerManager

+(UIStoryboard*)storyOfFirstViewController
{
    return [UIStoryboard storyboardWithName:@"FirstStoryboard" bundle:[NSBundle mainBundle]];
}

+(UIStoryboard*)storyOfOne
{
    return [UIStoryboard storyboardWithName:@"OneStoryboard" bundle:[NSBundle mainBundle]];
}

+(UIStoryboard*)storyOfTwo
{
    return [UIStoryboard storyboardWithName:@"TwoStoryboard" bundle:[NSBundle mainBundle]];
}

+(UIStoryboard*)storyOfSecondViewController
{
    return [UIStoryboard storyboardWithName:@"SecondStoryboard" bundle:[NSBundle mainBundle]];
}

+(UIStoryboard*)storyOfThirdViewController
{
    return [UIStoryboard storyboardWithName:@"ThirdStoryboard" bundle:[NSBundle mainBundle]];
}

+(UIStoryboard*)storyOfFourthViewController
{
    return [UIStoryboard storyboardWithName:@"FourthStoryboard" bundle:[NSBundle mainBundle]];
}

@end
