//
//  BViewController.m
//  iOSCategory
//
//  Created by JackWong on 2016/12/15.
//  Copyright © 2016年 fengchaoedu. All rights reserved.
//

#import "BViewController.h"
#import <objc/objc.h>
#import <objc/runtime.h>
@interface BViewController ()

@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *pushButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    CGRect rect = {{self.view.center.x - 50,self.view.center.y - 50},{200,200}};
    pushButton.frame = rect;
    [pushButton setTitle:@"touch" forState:UIControlStateNormal];
    [pushButton addTarget:self action:@selector(pushAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushButton];
    NSMutableString *tableString = [[NSMutableString alloc] init];
    self.str = tableString;
    [tableString setString:@"122222"];
    NSLog(@"#####%@",_str);
    NSLog(@"*****%@",tableString);
    
    NSArray *arr = [NSArray arrayWithObjects:@"1",@"2" ,nil];
    NSMutableArray *mutableArray = [arr mutableCopy];
    
    NSLog(@"%p %p",arr, mutableArray);
     NSLog(@"%p %p",arr[0], mutableArray[0]);
//      [mutableArray replaceObjectAtIndex:0 withObject:@"100"];
    mutableArray[0] = @"ssddd";
    NSLog(@"%p %p",arr[0], mutableArray[0]);
  
    NSLog(@"%@%@",arr,mutableArray);
   
    

}
- (void)setObject:(NSObject *)object
{
    objc_setAssociatedObject(self, "object", object, OBJC_ASSOCIATION_ASSIGN);
//    [object cyl_runAtDealloc:^{
//        _object = nil;
//    }];
    [self class];
}
- (void)pushAction:(id)sender{
    if(_delete && [_delete respondsToSelector:@selector(touchedController:touchView:)]){
        NSLog(@"%ld",[_delete touchedController:self touchView:sender]);
        
    }
    
    if(_touchBlock) {
        NSLog(@"%ld", _touchBlock(100,5));
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
