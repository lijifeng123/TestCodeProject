//
//  CustomCell.m
//  TTT
//
//  Created by lijifeng on 27.2.24.
//

#import "CustomCell.h"

@interface CustomCell ()



@end

@implementation CustomCell

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        // 初始化label
        self.label = [[UILabel alloc] initWithFrame:self.contentView.bounds];
        self.label.textAlignment = NSTextAlignmentCenter;
        self.label.textColor = [UIColor whiteColor];
        [self.contentView addSubview:self.label];
    }
    return self;
}

- (void)prepareForReuse {
    [super prepareForReuse];
    // 重用时重置label的文本和背景颜色
    self.label.text = nil;
    self.contentView.backgroundColor = [UIColor redColor];
}

@end
