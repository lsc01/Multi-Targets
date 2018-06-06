//
//  ViewController.m
//  Multi-Targets
//
//  Created by 61_lsc on 2018/6/6.
//  Copyright © 2018年 61_lsc. All rights reserved.
//

#import "ViewController.h"

#ifdef Target2
#import "Target2ViewController.h"
#else
#import "SelfViewController.h"
#endif

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
   
#ifdef Target2  //区分target，对特定target进行操作
    self.view.backgroundColor = [UIColor redColor];
    [Target2ViewController new];
#else
    self.view.backgroundColor = [UIColor yellowColor];
    [SelfViewController new];
#endif
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
