//
//  ViewController.m
//  Method-Swizzle
//
//  Created by 李雪涛 on 2019/6/2.
//  Copyright © 2019 李雪涛. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSArray *dataArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)test1 {
    self.dataArray = @[@"那好",@"好漂亮的美眉",@"放开那个女孩",@"我来啦"];
    [NSArray load];
    NSLog(@"%@",self.dataArray[4]);
}
@end
