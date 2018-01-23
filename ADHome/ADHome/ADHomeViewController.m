//
//  ADHomeViewController.m
//  ADHome
//
//  Created by Andy on 23/01/2018.
//  Copyright © 2018 Andy. All rights reserved.
//

#import "ADHomeViewController.h"
#import "ADHomeDetailViewController.h"
#import <ADMediatorCategory.h>

@interface ADHomeViewController ()

@property (nonatomic, strong) UILabel *label;
@property (nonatomic, strong) UIButton *button;

@end

@implementation ADHomeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.view addSubview:self.label];
    [self.view addSubview:self.button];
    self.label.frame = CGRectMake(0, 200, self.view.frame.size.width, 30);
    self.button.frame = CGRectMake(self.view.frame.size.width / 2 - 100, CGRectGetMaxY(self.label.frame) + 40, 200, 44);
}

#pragma mark - action

- (void)onClickButton
{
    [[ADMediator shareInstance] adm_mineChangeBackgroundColor:[UIColor colorWithRed:(random() % 255) / 255.0 green:(random() % 255) / 255.0 blue:(random() % 255) / 255.0 alpha:1]];
}

#pragma mark - super

- (NSString *)title
{
    return @"首页";
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    ADHomeDetailViewController *detailVC = [[ADHomeDetailViewController alloc] init];
    [self.navigationController pushViewController:detailVC animated:YES];
}

#pragma mark - getter and setter

- (UILabel *)label
{
    if (!_label) {
        _label = [[UILabel alloc] init];
        _label.text = @"Hello, Home.";
        _label.textColor = [UIColor blackColor];
        _label.font = [UIFont systemFontOfSize:20];
        _label.textAlignment = NSTextAlignmentCenter;
    }
    return _label;
}

- (UIButton *)button
{
    if (!_button) {
        _button = [[UIButton alloc] init];
        _button.backgroundColor = [UIColor blueColor];
        [_button setTitle:@"变色龙" forState:UIControlStateNormal];
        [_button addTarget:self action:@selector(onClickButton) forControlEvents:UIControlEventTouchUpInside];
    }
    return _button;
}

@end
