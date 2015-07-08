//
//  ViewController.m
//  0708_OC_MVC
//
//  Created by rimi on 7/8/15.
//  Copyright (c) 2015 周林. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"
@interface ViewController ()
- (void) initializeUserInterface;
@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    [self initializeUserInterface];
    
}

- (void) initializeUserInterface {
    // 设置背景颜色
    self.view.backgroundColor = [UIColor whiteColor];
    // 透明度
    self.view.alpha = 1;
    
    /* 文本标签 : 标题*/
    UILabel * titleLable = [[UILabel alloc]init];
    titleLable.bounds = CGRectMake(0, 0, CGRectGetWidth(self.view.bounds), 30);
    titleLable.center = CGPointMake(CGRectGetMidX(self.view.bounds), 20 + CGRectGetMidY(titleLable.bounds));
    titleLable.text = NSStringFromClass([self class]);
    titleLable.textColor = [UIColor purpleColor];
    titleLable.textAlignment = NSTextAlignmentCenter;
    // 设置成粗体 系统样式 并设置字号大小为25
    titleLable.font = [UIFont boldSystemFontOfSize:25];
    [self.view addSubview:titleLable];
#pragma mark - UIView
    /**
     1. 后加载的视图显示在父视图最上面
     */
    
    /* 黑色视图 */
    UIView *blackView = [[UIView alloc]init];
    blackView.bounds = CGRectMake(0, 0, 150, 150);
    blackView.center = CGPointMake(CGRectGetMidX(self.view.bounds), CGRectGetMidY(self.view.bounds) - 100);
    blackView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:blackView];

    
    /* 蓝色视图 */
    UIView *blueView = [[UIView alloc]init];
    //设置bounds
    blueView.bounds = CGRectMake(0, 0, 150, 150);
    //设置center
    blueView.center = CGPointMake(CGRectGetMidX(blackView.frame) - 60, CGRectGetMidY(blackView.frame) - 60);
    //设置背景颜色
    blueView .backgroundColor = [UIColor blueColor];
    [self.view addSubview:blueView];
    
    UIView *redView = [[UIView alloc]init];
    //设置bounds
    redView.bounds = CGRectMake(0, 0, 150, 150);
    //设置center
    redView.center = CGPointMake(CGRectGetMidX(blackView.frame) + 60, CGRectGetMidY(blackView.frame) + 60);
    //设置背景颜色
    redView .backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
#pragma mark - 视图操作
    
    // 将某个子视图放在最上面
    [self.view bringSubviewToFront: blackView];
    
    // 将某个子视图放到最下面
//    [self.view sendSubviewToBack:blackView];
    
    // 交换某两个子视图的位置(至少3个)
    [self.view exchangeSubviewAtIndex:0 withSubviewAtIndex:1];
    
//    // 移除视图
//    [blueView removeFromSuperview];
    // 移除所有视图
    /*
    for (UIView * view in self.view.subviews) {
        [view removeFromSuperview];
    }
     */
    /* 插入视图 */
    //[self.view insertSubview:(UIView *) aboveSubview:(UIView *)];
#pragma mark - UIButton
    UIButton * button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.bounds = CGRectMake(0, 0, 150, 30);
    button.center = CGPointMake(CGRectGetMidX(self.view.bounds), CGRectGetMaxY(redView.frame) + CGRectGetMidY(button.bounds) + 50);
    [button setTitle:@"Enter" forState:UIControlStateNormal];
    // 添加事件监听
    [button addTarget:self action:@selector(respondsToButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
    
}

- (void) respondsToButton : (UIButton *) sender {
    // 打印当前方法名字
    NSLog(@"%@", NSStringFromSelector(_cmd));
    DetailViewController * detail_vc = [[DetailViewController alloc]init];
    detail_vc.context = @"Hello World!";
    // 模态切换
    /**
     *  viewController : 要切换的某个视图控制器
     *  animated : 是否显示动画
     */
    [self presentViewController:detail_vc animated:YES completion:nil];

    
    
}



@end
