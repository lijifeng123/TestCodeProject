//
//  ThirdManager.h
//  UMU_Package
//
//  Created by lych on 2018/9/5.
//  Copyright © 2018年 UMU. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define ThirdManager  [UGThirdManager sharedInstance]

@interface UGThirdManager : NSObject

+(instancetype) sharedInstance;

- (UIImage *) thirdpartHeadImage;

@end
