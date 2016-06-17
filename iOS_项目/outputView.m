//
//  outputView.m
//  iOS_项目
//
//  Created by ma c on 16/6/16.
//  Copyright © 2016年 May. All rights reserved.
//

#import "outputView.h"
@interface outputView ()
@property (strong,nonatomic) UILabel *onekeyLabel;
@property (strong,nonatomic) UIButton *qqButtton;
@property (strong,nonatomic) UIButton *weiXinButton;
@property (strong,nonatomic) UIButton *weiBoButton;
@end
@implementation outputView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.onekeyLabel];
        [self addSubview:self.qqButtton];
        [self addSubview:self.weiXinButton];
        [self addSubview:self.weiBoButton];
    }
    return self;
}
- (void)layoutSubviews
{
    __weak typeof(self)weakSelf = self;
    [self.onekeyLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.mas_top).offset(15);
        make.left.equalTo(weakSelf.mas_left).offset(16);
        make.right.equalTo(weakSelf.mas_right).offset(-16);
        make.height.equalTo(30);
    }];
    [self.weiXinButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.onekeyLabel.mas_bottom).offset(20);
        make.left.equalTo(weakSelf.mas_left).offset(167);
        make.right.equalTo(weakSelf.mas_right).offset(-167);
        make.size.equalTo(CGSizeMake(90, 90));
        
    }];
    [self.qqButtton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.onekeyLabel).offset(20);
        make.left.equalTo(weakSelf.mas_left).offset(60);
        make.right.equalTo(weakSelf.weiXinButton.mas_left).offset(60);
        make.size.equalTo(CGSizeMake(90, 90));
    }];
    [self.weiBoButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.onekeyLabel.mas_bottom).offset(20);
        make.left.equalTo(weakSelf.weiXinButton.mas_right).offset(60);
        make.right.equalTo(weakSelf.mas_right).offset(-60);
        
    }];
}
-(UILabel *)onekeyLabel
{
    if (!_onekeyLabel) {
        _onekeyLabel = [[UILabel alloc] init];
        _onekeyLabel.backgroundColor = [UIColor yellowColor];
    }
    return _onekeyLabel;
}
- (UIButton *)qqButtton
{
    if (!_qqButtton) {
        _qqButtton = [UIButton buttonWithType:UIButtonTypeCustom];
        _qqButtton.imageView.image = [UIImage imageNamed:@"注册界面微博登录 (4)"];
    }
    return _qqButtton;
}
- (UIButton *)weiXinButton
{
    if (!_weiXinButton) {
        _weiXinButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _weiXinButton.backgroundColor = [UIColor greenColor];
        _weiXinButton.imageView.image = [UIImage imageNamed:@"注册界面微博登录 (7)"];
    }
    return _weiXinButton;
}
- (UIButton *)weiBoButton
{
    if (!_weiBoButton) {
        _weiBoButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _weiBoButton.backgroundColor = [UIColor blueColor];
        _weiBoButton.imageView.image = [UIImage imageNamed:@"注册界面微博登录 (1)"];
        
    }
    return _weiBoButton;
}

@end

