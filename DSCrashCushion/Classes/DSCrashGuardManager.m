//
//  DSCrashGuardManager.m
//  DSCrashCushion
//
//  Created by dasen on 2017/11/7.
//

#pragma clang diagnostic push
#pragma clang diagnostic ignored"-Wundeclared-selector"

#import "DSCrashGuardManager.h"
#import "DSSwizzle.h"

@implementation DSCrashGuardManager
+ (instancetype)shareInstance{
    static DSCrashGuardManager *guardManager;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        guardManager = [[self alloc]init];
    });
    return guardManager;
}

- (void)configCrashGuardService:(DSCrashGuardType)guardType{
    
    // 容器
    if (guardType & DSCrashGuardTypeContainer) {
        [self setupGuardContainer];
    }
    
    // 方法
    if (guardType & DSCrashGuardTypeUnrecognizedSelector) {
        [self setupGuardSelector];
    }

    // NanoFree
    if (guardType & DSCrashGuardTypeNanoFree) {
        
    }
}

/**
 容器类预防
 */
- (void)setupGuardContainer{

    // 数组
    [@[].class swizzleMethod:@selector(objectAtIndex:) newSel:@selector(safeArray0ObjectAtIndex:) isClass:NO];
    [[@[@""] class] swizzleMethod:@selector(objectAtIndex:) newSel:@selector(safesingleArray0ObjectAtIndex:) isClass:NO];
    [[@[@1, @2] class] swizzleMethod:@selector(objectAtIndex:) newSel:@selector(safeObjectAtIndex:) isClass:NO];
    [[@[].mutableCopy class] swizzleMethod:@selector(insertObject:atIndex:) newSel:@selector(safeInsertObject:atIndex:) isClass:NO];
    
    // 字典
    [NSDictionary swizzleMethod:@selector(setObject:forKey:) newSel:@selector(safeSetObject:forKey:) isClass:NO];
    [NSMutableDictionary swizzleMethod:@selector(removeObjectForKey:) newSel:@selector(safeRemoveObjectForKey:) isClass:NO];
    
    // 字符串
}

- (void)setupGuardSelector{
     [[NSObject class] swizzleMethod:@selector(forwardingTargetForSelector:) newSel:@selector(safeForwardingTargetForSelector) isClass:YES];
     [[NSObject class] swizzleMethod:@selector(forwardingTargetForSelector:) newSel:@selector(safeForwardingTargetForSelector) isClass:NO];
}

@end
#pragma clang diagnostic pop
