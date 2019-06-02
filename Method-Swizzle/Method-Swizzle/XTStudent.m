//
//  XTStudent.m
//  Method-Swizzle
//
//  Created by 李雪涛 on 2019/6/2.
//  Copyright © 2019 李雪涛. All rights reserved.
//

#import "XTStudent.h"
#import "XTRuntimeTool.h"
@implementation XTStudent

+ (void)load{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [XTRuntimeTool xt_betterMethodSwizzlingWithClass:self oriSEL:@selector(personInstanceMethod) swizzledSEL:@selector(lg_studentInstanceMethod)];
    });
}

- (void)xt_studentInstanceMethod{
    [self xt_studentInstanceMethod];
    NSLog(@"LGStudent分类添加的lg对象方法:%s",__func__);
}
@end
