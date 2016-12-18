//
//  ViewController.m
//  iOSCategory
//
//  Created by JackWong on 2016/12/13.
//  Copyright © 2016年 fengchaoedu. All rights reserved.
//

#import "ViewController.h"
#import "BViewController.h"

@interface ViewController () <TouchDelete>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSInteger (^add)(NSInteger,NSInteger) = ^(NSInteger a,NSInteger b){
        return  a + b;
        
    };
    NSLog(@"-------------%ld",add(3,5));
    
    UIButton *pushButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    CGRect rect = {{self.view.center.x - 50,self.view.center.y - 50},{200,200}};
    pushButton.frame = rect;
    [pushButton setTitle:@"push" forState:UIControlStateNormal];
    [pushButton addTarget:self action:@selector(pushAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushButton];

}

- (void)pushAction:(id)sender{
    BViewController *b = [[BViewController alloc] init];
    b.delete = self;
    b.touchBlock = ^(int a, int b){
        return [[NSString stringWithFormat:@"%d",a + b] integerValue];
    };
    [self.navigationController pushViewController:b animated:YES];
}

- (NSInteger)touchedController:(UIViewController *)controller touchView:(UIView *)touchView{
    return  1;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
