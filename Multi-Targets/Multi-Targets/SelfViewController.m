//
//  SelfViewController.m
//  Multi-Targets
//
//  Created by 61_lsc on 2018/6/6.
//  Copyright © 2018年 61_lsc. All rights reserved.
//

#import "SelfViewController.h"
#import <AFNetworking.h>
#import <PgySDK/PgyManager.h>
#import <PgyUpdate/PgyUpdateManager.h>
#import <Masonry.h>
@interface SelfViewController ()

@end

@implementation SelfViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [AFNetworkReachabilityManager manager];
    
    //启动基本SDK
//    [[PgyManager sharedPgyManager] startManagerWithAppId:@"PGY_APP_ID"];
//    //启动更新检查SDK
//    [[PgyUpdateManager sharedPgyManager] startManagerWithAppId:@"PGY_APP_ID"];
    
    [self.view mas_makeConstraints:^(MASConstraintMaker *make) {
        
    }];
    
    NSLog(@"PGY");
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
