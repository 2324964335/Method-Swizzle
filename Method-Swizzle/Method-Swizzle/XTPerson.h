//
//  XTPerson.h
//  Method-Swizzle
//
//  Created by 李雪涛 on 2019/6/2.
//  Copyright © 2019 李雪涛. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface XTPerson : NSObject

- (void)personInstanceMethod;
+ (void)personClassMethod;
@end

NS_ASSUME_NONNULL_END
