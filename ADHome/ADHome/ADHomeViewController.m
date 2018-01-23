//
//  ADHomeViewController.m
//  ADHome
//
//  Created by Andy on 23/01/2018.
//  Copyright © 2018 Andy. All rights reserved.
//

#import "ADHomeViewController.h"
#import "ADHomeDetailViewController.h"

@interface ADHomeViewController ()

@property (nonatomic, strong) UILabel *label;

@end

@implementation ADHomeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.view addSubview:self.label];
    self.label.frame = CGRectMake(0, 200, self.view.frame.size.width, 30);
}

- (NSString *)title
{
    return @"首页";
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    ADHomeDetailViewController *detailVC = [[ADHomeDetailViewController alloc] init];
    [self.navigationController pushViewController:detailVC animated:YES];
}

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

@end
