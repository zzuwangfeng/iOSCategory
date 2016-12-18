//
//  BViewController.h
//  iOSCategory
//
//  Created by JackWong on 2016/12/15.
//  Copyright © 2016年 fengchaoedu. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TouchDelete <NSObject>

@required
- (NSInteger)touchedController:(nullable UIViewController *)controller touchView:(nullable UIView *)touchView;

@end

typedef NSInteger(^touch)(int,int);

@interface BViewController : UIViewController
@property (nullable, nonatomic, weak) id<TouchDelete> delete;

@property (nullable, nonatomic, strong) NSString *str;

@property (null_unspecified, nonatomic, copy) touch touchBlock;

@end
