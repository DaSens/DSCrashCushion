//
//  NSMutableArray+GuardClass.m
//  DSCrashCushion
//
//  Created by dasen on 2017/11/7.
//

#import "NSMutableArray+GuardClass.h"

@implementation NSMutableArray (GuardClass)

- (void)safeAddObject:(id)anObject{
    if (anObject) {
        [self safeAddObject:anObject];
    }
}

- (void)safeInsertObject:(id)anObject atIndex:(NSUInteger)index{
    if (index < self.count && anObject != nil) {
        [self safeInsertObject:anObject atIndex:index];
    }
}

- (void)safeRemoveObject:(id)anObject{
    if (anObject) {
        [self safeRemoveObject:anObject];
    }
}

@end
