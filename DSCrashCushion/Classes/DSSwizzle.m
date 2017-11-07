//
//  NSObject+DSSwizzle.m
//  DSCrashCushion
//
//  Created by dasen on 2017/11/7.
//

#import "DSSwizzle.h"
#import <objc/runtime.h>
@implementation NSObject (DSSwizzle)

+ (void)swizzleMethod:(SEL)origSel newSel:(SEL)newSel isClass:(BOOL)isClass{
    Method origMethod;
    Method newMethod;
    
    if (isClass) {
       origMethod = class_getClassMethod(self, origSel);
       newMethod = class_getClassMethod(self, newSel);
    }else{
       newMethod = class_getInstanceMethod(self, newSel);
       origMethod = class_getInstanceMethod(self, origSel);
    }

    Class class  = objc_getClass(NSStringFromClass([[self new] class]).UTF8String);
    
    if (origMethod && newMethod) {
        method_exchangeImplementations(class_getInstanceMethod(class, origSel), class_getInstanceMethod(self, newSel));
    }
}

@end
