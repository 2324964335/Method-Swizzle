//
//  XTPerson.m
//  Method-Swizzle
//
//  Created by 李雪涛 on 2019/6/2.
//  Copyright © 2019 李雪涛. All rights reserved.
//

#import "XTPerson.h"

@implementation XTPerson

- (void)personInstanceMethod{
    NSLog(@"person对象方法:%s",__func__);
}
+ (void)personClassMethod{
    NSLog(@"person类方法:%s",__func__);
}


@end
