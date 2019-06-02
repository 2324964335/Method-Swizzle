//
//  NSArray+XT.m
//  Method-Swizzle
//
//  Created by 李雪涛 on 2019/6/2.
//  Copyright © 2019 李雪涛. All rights reserved.
//

#import "NSArray+XT.h"
#import "XTRuntimeTool.h"
#import <objc/runtime.h>

/**
 
 */
@implementation NSArray (XT)
+ (void)load{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [XTRuntimeTool xt_methodSwizzlingWithClass:objc_getClass("__NSArrayI") oriSEL:@selector(objectAtIndex:) swizzledSEL:@selector(lg_objectAtIndex:)];
        
        [XTRuntimeTool xt_methodSwizzlingWithClass:objc_getClass("__NSArrayI") oriSEL:@selector(objectAtIndexedSubscript:) swizzledSEL:@selector(lg_objectAtIndexedSubscript:)];
    });
}

- (id)lg_objectAtIndex:(NSUInteger)index{
    if (index > self.count-1) {
        NSLog(@"取值越界了,请记录 : %lu > %lu",(unsigned long)index,self.count-1);
        return nil;
    }
    return [self lg_objectAtIndex:index];
}


- (id)lg_objectAtIndexedSubscript:(NSUInteger)index{
    if (index > self.count-1) {
        NSLog(@"取值越界了,请记录 : %lu > %lu",(unsigned long)index,self.count-1);
        return nil;
    }
    return [self lg_objectAtIndexedSubscript:index];
}

@end
