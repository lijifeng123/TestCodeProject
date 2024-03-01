//
//  ThirdManager.m
//  UMU_Package
//
//  Created by lych on 2018/9/5.
//  Copyright © 2018年 UMU. All rights reserved.
//

#import "UGThirdManager.h"

@interface UGThirdManager ()
@property (nonatomic,strong) NSBundle *resBundle;
@end

@implementation UGThirdManager

+(instancetype) sharedInstance
{
    static UGThirdManager *pInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        pInstance = [[UGThirdManager alloc] init];
    });
    return pInstance;
}

- (NSBundle *) resBundle
{
    if (!_resBundle) {
        _resBundle = [NSBundle bundleForClass:self.class];
    }
    return _resBundle;
}

- (UIImage *) thirdpartHeadImage
{
    return [UIImage imageNamed:@"custom_header" inBundle:self.resBundle compatibleWithTraitCollection:nil];
}
@end
