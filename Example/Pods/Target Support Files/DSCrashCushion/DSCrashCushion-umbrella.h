#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "DSCrashGuardManager.h"
#import "DSSwizzle.h"
#import "NSArray+GuardClass.h"
#import "NSDictionary+GuardClass.h"
#import "NSMutableArray+GuardClass.h"
#import "NSMutableDictionary+GuardClass.h"

FOUNDATION_EXPORT double DSCrashCushionVersionNumber;
FOUNDATION_EXPORT const unsigned char DSCrashCushionVersionString[];

