//
//  DSCrashGuardManager.m
//  DSCrashCushion
//
//  Created by dasen on 2017/11/7.
//

#import "DSCrashGuardManager.h"

@implementation DSCrashGuardManager
+ (instancetype)shareInstance{
    static DSCrashGuardManager *guardManager;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        guardManager = [[self alloc]init];
    });
    return guardManager;
}
@end
