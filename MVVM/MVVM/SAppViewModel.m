//
//  SAppViewModel.m
//  MVVM
//
//  Created by Sun on 2020/2/18.
//  Copyright © 2020 sun. All rights reserved.
//

#import "SAppViewModel.h"
#import "SAppModel.h"
#import "SAppView.h"

@interface SAppViewModel() <SAppViewDelegate>
@property (nonatomic, weak) UIViewController *controller;
// 模型的属性，在VM中也声明，便于被View监听
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *image;
@end

@implementation SAppViewModel
- (instancetype)initWithController:(UIViewController *)controller {
    if (self = [super init]) {
        self.controller = controller;
        // 创建View
        SAppView *appView = [[SAppView alloc] init];
        appView.frame = CGRectMake(100, 100, 100, 150);
        appView.delegate = self;
        // 设置视图的VM是self
        appView.viewModel = self;
        [controller.view addSubview:appView];
        
        // 网络加载数据
        SAppModel *app = [[SAppModel alloc] init];
        app.name = @"QQ";
        app.image = @"QQ";
        
        // 给自己的模型属性赋值数据
        self.name = app.name;
        self.image = app.image;
    }
    return self;
}

- (void)appViewDidClick:(SAppView *)appView {
    NSLog(@"viewModel 监听了 appView 的点击");
}
@end
