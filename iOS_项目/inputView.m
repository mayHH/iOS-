//
//  inputView.m
//  iOS_项目
//
//  Created by ma c on 16/6/16.
//  Copyright © 2016年 May. All rights reserved.
//

#import "inputView.h"

@interface inputView ()
@property (strong,nonatomic) UILabel *backLabel;
@property (strong,nonatomic) UITextField *nameTextField;
@property (strong,nonatomic) UITextField *passwordTextField;
@property (strong,nonatomic) UILabel *lineLabel;
@property (strong,nonatomic) UIButton *landingButton;
@property (strong,nonatomic) UIButton *lorginButton;
@end
@implementation inputView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
       
        [self addSubview:self.backLabel];
        [self addSubview:self.nameTextField];
        [self addSubview:self.lineLabel];
        [self addSubview:self.passwordTextField];
        [self addSubview:self.landingButton];
        [self addSubview:self.lorginButton];
        
    }
    return self;
}
- (void)layoutSubviews
{
    __weak typeof(self)weakSelf = self;
    [self.backLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.mas_top).offset(15);
        make.left.equalTo(weakSelf.mas_left);
        make.right.equalTo(weakSelf.mas_right);
        make.height.equalTo(88);
    }];
    [self.nameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(weakSelf.mas_top).offset(15);
        make.left.equalTo(weakSelf.mas_left).offset(15);
        make.right.equalTo(weakSelf.mas_right).offset(-15);
        make.height.equalTo(44);
    }];
    [self.lineLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.nameTextField.mas_bottom);
        make.left.equalTo(weakSelf.mas_left).offset(15);
        make.right.equalTo(weakSelf.mas_right).offset(-15);
        make.height.equalTo(1);
    }];
    [self.passwordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.lineLabel.mas_bottom);
        make.left.equalTo(weakSelf.mas_left).offset(15);
        make.right.equalTo(weakSelf.mas_right).offset(-15);
        make.bottom.equalTo(weakSelf.backLabel.mas_bottom);
    }];
    [self.landingButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.passwordTextField.mas_bottom).offset(15);
        make.left.equalTo(weakSelf.mas_left).offset(16);
        make.right.equalTo(weakSelf.mas_right).offset(-16);
        make.height.equalTo(35);
    }];
    [self.lorginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.equalTo(CGSizeMake(100, 25));
        make.top.equalTo(weakSelf.landingButton.mas_bottom).offset(17);
        make.right.equalTo(weakSelf.mas_right).offset(-16);
        
        
    }];
}
- (UILabel *)backLabel
{
    if (!_backLabel) {
        _backLabel = [[UILabel alloc] init];
        _backLabel.backgroundColor = [UIColor whiteColor];
    }
    return _backLabel;
}
- (UITextField *)nameTextField
{
    if (!_nameTextField) {
        _nameTextField = [[UITextField alloc] init];
        _nameTextField.backgroundColor = [UIColor brownColor];
    }
    return _nameTextField;
}
- (UITextField *)passwordTextField
{
    if (!_passwordTextField) {
        _passwordTextField = [[UITextField alloc] init];
        _passwordTextField.backgroundColor = [UIColor yellowColor];
    }
    return _passwordTextField;
}
-(UILabel *)lineLabel
{
    if (!_lineLabel) {
        _lineLabel = [[UILabel alloc] init];
        _lineLabel.backgroundColor = [UIColor redColor];
    }
    return _lineLabel;
}
- (UIButton *)landingButton
{
    if (!_landingButton) {
        _landingButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _landingButton.backgroundColor = [UIColor blueColor];
    }
    return _landingButton;
}
- (UIButton *)lorginButton
{
    if (!_lorginButton) {
        _lorginButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_lorginButton setBackgroundColor:[UIColor yellowColor]];
    }
    return _lorginButton;
}
@end
