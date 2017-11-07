//
//  NSArray+DSDS.m
//  DSCrashCushion_Example
//
//  Created by dasen on 2017/11/7.
//  Copyright © 2017年 zhangdasen@foxmail.com. All rights reserved.
//

#import "NSArray+DSDS.h"
#import <objc/runtime.h>
@implementation NSArray (DSDS)
+(void)load{
    
    [super load];

    //  替换可变数组中的方法
    
    Method oldMutableObjectAtIndex = class_getInstanceMethod(objc_getClass("__NSArrayM"), @selector(addObject:));
    Method newMutableObjectAtIndex =  class_getInstanceMethod(objc_getClass("__NSArrayM"), @selector(mutableAddObject:));
    
    method_exchangeImplementations(oldMutableObjectAtIndex, newMutableObjectAtIndex);
    
}

- (void)mutableAddObject:(id)anObject{
    [self mutableAddObject:anObject];    
}

@end
