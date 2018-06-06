//
//  Target2ViewController.m
//  Target2
//
//  Created by 61_lsc on 2018/6/6.
//  Copyright © 2018年 61_lsc. All rights reserved.
//

#import "Target2ViewController.h"
#import <AFNetworking.h>
#import <PgySDK/PgyManager.h>
#import <PgyUpdate/PgyUpdateManager.h>
#import <Masonry.h>
@interface Target2ViewController ()

@end

@implementation Target2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //启动基本SDK
    [[PgyManager sharedPgyManager] startManagerWithAppId:@"PGY_APP_ID"];
    //启动更新检查SDK
    [[PgyUpdateManager sharedPgyManager] startManagerWithAppId:@"PGY_APP_ID"];
    
//    [AFNetworkReachabilityManager manager];
    
    [self.view mas_makeConstraints:^(MASConstraintMaker *make) {
        
    }];
    
    NSLog(@"AFNetworking");
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
