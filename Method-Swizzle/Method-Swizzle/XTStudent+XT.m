//
//  XTStudent+XT.m
//  Method-Swizzle
//
//  Created by 李雪涛 on 2019/6/2.
//  Copyright © 2019 李雪涛. All rights reserved.
//

#import "XTStudent+XT.h"
#import "XTRuntimeTool.h"
#import <objc/runtime.h>

@implementation XTStudent (XT)

+ (void)load{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [XTRuntimeTool xt_bestMethodSwizzlingWithClass:self oriSEL:@selector(helloword) swizzledSEL:@selector(lg_studentInstanceMethod)];
        
    });
}
//helloword(SEL) -->xt_studentInstanceMethod(IMP)
//xt_studentInstanceMethod(SEL) -->helloword(IMP)
//交换不成功。
- (void)xt_studentInstanceMethod{
    NSLog(@"LGStudent分类添加的lg对象方法:%s",__func__);
    [self xt_studentInstanceMethod];
}

@end
