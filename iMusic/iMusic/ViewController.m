//
//  ViewController.m
//  iMusic
//
//  Created by 杨晓晨 on 15/10/30.
//  Copyright © 2015年 杨晓晨. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>
@interface ViewController ()
@property (nonatomic ,strong) UILabel *lable2;
@property (nonatomic ,strong) UILabel *lable1;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.lable1];
    [self.view addSubview:self.lable2];
    

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillLayoutSubviews {
    [self.lable1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.lessThanOrEqualTo(self.view.mas_top).with.offset(50);
        make.left.lessThanOrEqualTo(self.view.mas_left).with.offset(150);
    }];
    
    [self.lable2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.lable1).with.offset(0);
        make.right.equalTo(self.lable1).with.offset(100);
    }];
    
//    [self.lable1 mas_makeConstraints:^(MASConstraintMaker *make) {
//
//    }];
    //[self.view layoutIfNeeded];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark --- lazy

- (UILabel *)lable1 {
    if (_lable1 == nil) {
        _lable1 = [[UILabel alloc] init];
        _lable1.text = @"啦啦啦啦";
    }
    return _lable1;
}

- (UILabel *)lable2 {
    if (_lable2 == nil) {
        _lable2 = [[UILabel alloc] init];
        _lable2.text = @"哈哈哈哈";
    }
    return _lable2;
}

@end
