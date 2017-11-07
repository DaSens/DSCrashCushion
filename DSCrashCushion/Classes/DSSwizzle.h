//
//  NSObject+DSSwizzle.h
//  DSCrashCushion
//
//  Created by dasen on 2017/11/7.
//

#import <Foundation/Foundation.h>

@interface NSObject (DSSwizzle)

+ (void)swizzleMethod:(SEL)origSel newSel:(SEL)newSel isClass:(BOOL)isClass;

@end
