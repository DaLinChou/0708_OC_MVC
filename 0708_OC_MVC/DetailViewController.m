//
//  DetailViewController.m
//  0708_OC_MVC
//
//  Created by rimi on 7/8/15.
//  Copyright (c) 2015 周林. All rights reserved.
//

#import "DetailViewController.h"
@interface DetailViewController ()
- (void) initializeUserInterface;
@end

@implementation DetailViewController

#pragma mark - 视图的生命周期
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initializeUserInterface];
    NSLog(@"%@", NSStringFromSelector(_cmd));
}

// 视图将要显示
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"%@", NSStringFromSelector(_cmd));
    
}

// 视图已经显示
- (void)viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];
    NSLog(@"%@", NSStringFromSelector(_cmd));
}


// 视图将要消失
- (void)viewWillDisappear:(BOOL)animated {

    [super viewWillDisappear:animated];
    NSLog(@"%@", NSStringFromSelector(_cmd));
}

// 视图已经消失
- (void)viewDidDisappear:(BOOL)animated {
    
    [super viewDidDisappear:animated];
    NSLog(@"%@", NSStringFromSelector(_cmd));
}


#pragma mark - init
- (void)initializeUserInterface {

    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel * titleLable = [[UILabel alloc]init];
    titleLable.bounds = CGRectMake(0, 0, CGRectGetWidth(self.view.bounds), 30);
    titleLable.center = CGPointMake(CGRectGetMidX(self.view.bounds), 20 + CGRectGetMidY(titleLable.bounds));
    titleLable.text = NSStringFromClass([self class]);
    titleLable.textColor = [UIColor purpleColor];
    titleLable.textAlignment = NSTextAlignmentCenter;
    // 设置成粗体 系统样式 并设置字号大小为25
    titleLable.font = [UIFont boldSystemFontOfSize:25];
    [self.view addSubview:titleLable];
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.bounds = CGRectMake(0, 0, 150, 30);
    button.center = CGPointMake(CGRectGetMidX(self.view.bounds), CGRectGetMaxY(titleLable.frame) + CGRectGetMidY(button.bounds) + 20);
    [button setTitle:@"Enter" forState:UIControlStateNormal];
    // 添加事件监听
    [button addTarget:self action:@selector(respondsToButton:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    
    /* 传值文本标签 */
    UILabel * valueLable = [[UILabel alloc]init];
    valueLable.bounds = CGRectMake(0, 0, CGRectGetWidth(self.view.bounds), 30);
    valueLable.center = self.view.center;
    valueLable.textAlignment = NSTextAlignmentCenter;
    // 属性传值赋值
    valueLable.text = self.context;
    [self.view addSubview:valueLable];
    
    
}

#pragma mark - responds event
- (void) respondsToButton : (UIButton *) sender {
    // 返回上一个界面
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
    NSLog(@"有一个控制器被释放");
    
}
@end
