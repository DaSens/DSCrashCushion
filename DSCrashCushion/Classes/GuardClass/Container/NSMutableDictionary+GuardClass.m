//
//  NSMutableDictionary+GuardClass.m
//  DSCrashCushion
//
//  Created by dasen on 2017/11/7.
//

#import "NSMutableDictionary+GuardClass.h"

@implementation NSMutableDictionary (GuardClass)

- (void)safeSetObject:(id)anObject forKey:(id<NSCopying>)aKey
{
    @try{
        [self safeSetObject:anObject forKey:aKey];
    }@catch (NSException *exception) {
        
    }
}

- (void)safeRemoveObjectForKey:(id)aKey{
    @try{
        [self safeRemoveObjectForKey:aKey];
    }@catch (NSException *exception){
        
    }
}

@end

