//
//  NSMutableArray+GuardClass.m
//  DSCrashCushion
//
//  Created by dasen on 2017/11/7.
//

#import "NSMutableArray+GuardClass.h"

@implementation NSMutableArray (GuardClass)

- (void)safeInsertObject:(id)anObject atIndex:(NSUInteger)index{
    if (index >= self.count && !anObject) {
        return;
    }
    [self safeInsertObject:anObject atIndex:index];
}

- (void)safeRemoveObject:(id)anObject{
    if (anObject) {
        [self safeRemoveObject:anObject];
    }
}

- (void)safeAddObjectsFromArray:(NSArray *)otherArray{
    if (otherArray) {
        [self safeAddObjectsFromArray:otherArray];
    }
}

@end


@implementation NSArray (GuardClass)
- (id)safeObjectAtIndex:(NSUInteger)index
{
    if (index >= self.count) {
        return nil;
    }
    return [self safeObjectAtIndex:index];
}

- (id)safeArray0ObjectAtIndex:(NSUInteger)index
{
    if (index >= self.count) {
        return nil;
    }
    return [self safeArray0ObjectAtIndex:index];
}

- (id)singleArray0ObjectAtIndex:(NSUInteger)index
{
    if (index >= self.count) {
        return nil;
    }
    return [self singleArray0ObjectAtIndex:index];
}

@end
