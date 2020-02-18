//
//  SAppView.h
//  MVVM
//
//  Created by Sun on 2020/2/18.
//  Copyright © 2020 sun. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SAppView, SAppViewModel;
NS_ASSUME_NONNULL_BEGIN
// 声明协议，用于View给VM通信
@protocol SAppViewDelegate <NSObject>
@optional
- (void)appViewDidClick:(SAppView *)appView;
@end

@interface SAppView : UIView
// VM属性
@property (nonatomic, weak) SAppViewModel *viewModel;
// 代理属性
@property (nonatomic, weak) id<SAppViewDelegate> delegate;
@end

NS_ASSUME_NONNULL_END
