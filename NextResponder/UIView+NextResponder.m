//
//  UIView+NextResponder.m
//  NextResponder
//
//  Created by yangrui on 2020/4/8.
//  Copyright © 2020 yangrui. All rights reserved.
//

#import "UIView+NextResponder.h"
 


@implementation UIView (NextResponder)


/**
 我们可以通过 nextResponder 找到指定的 父 responder
 */
- (UIViewController *)viewController {
    UIResponder *next = self.nextResponder;
    
    do {
        //判断响应者是否为视图控制器
        if ([next isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)next;
        }
        
        next = next.nextResponder;
        
    } while (next != nil);
    
    return nil;
}

@end
