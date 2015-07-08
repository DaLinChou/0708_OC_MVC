//
//  AppDelegate.m
//  0708_OC_MVC
//
//  Created by rimi on 7/8/15.
//  Copyright (c) 2015 周林. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    _window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen] bounds]];
    _window.backgroundColor = [UIColor whiteColor];
    [_window makeKeyAndVisible];
    ViewController * root_vc = [[ViewController alloc] init];
    _window.rootViewController = root_vc;
    
    return YES;
}

@end
