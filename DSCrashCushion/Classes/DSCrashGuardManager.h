//
//  DSCrashGuardManager.h
//  DSCrashCushion
//
//  Created by dasen on 2017/11/7.
//

#import <Foundation/Foundation.h>

typedef NS_OPTIONS(NSUInteger, DSCrashGuardType) {
    DSCrashGuardTypeNone                                  = 0,
    DSCrashGuardTypeAll                                   = 0xffff,
    DSCrashGuardTypeBadAccess                             = 1 << 1,
    DSCrashGuardTypeUnrecognizedSelector                  = 1 << 2,
    DSCrashGuardTypePerformSelector                       = 1 << 3,
    DSCrashGuardTypeContainer                             = 1 << 4,
    DSCrashGuardTypeNSNotificationCenter                  = 1 << 5,
    DSCrashGuardTypeNSString                              = 1 << 6,
    DSCrashGuardTypeNSAttributedString                    = 1 << 7,
    DSCrashGuardTypeNSTimer                               = 1 << 8,
    DSCrashGuardTypeNavigationController                  = 1 << 9,
    DSCrashGuardTypeNSKeyedUnarchiver                     = 1 << 10,
    DSCrashGuardTypeKVODealloc                            = 1 << 11,
    DSCrashGuardTypeWebView                               = 1 << 12,
    DSCrashGuardTypeNanoFree                              = 1 << 13,
    DSCrashGuardTypeNSBundleLoadException                 = 1 << 14
};

@interface DSCrashGuardManager : NSObject

+ (instancetype)shareInstance;

- (void)configCrashGuardService:(DSCrashGuardType)guardType;

@end
