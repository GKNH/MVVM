//
//  ViewController.m
//  MVVM
//
//  Created by Sun on 2020/2/18.
//  Copyright © 2020 sun. All rights reserved.
//

#import "ViewController.h"
#import "SAppViewModel.h"

@interface ViewController ()
@property (nonatomic, strong) SAppViewModel *viewModel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.viewModel = [[SAppViewModel alloc] initWithController:self];
}


@end
