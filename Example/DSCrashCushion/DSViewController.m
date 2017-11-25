//
//  DSViewController.m
//  DSCrashCushion
//
//  Created by zhangdasen@foxmail.com on 11/04/2017.
//  Copyright (c) 2017 zhangdasen@foxmail.com. All rights reserved.
//

#import "DSViewController.h"
#import "DSSwizzle.h"
#import "DSCrashGuardManager.h"
@interface DSViewController ()
@property (nonatomic, strong)UIButton *clickBtn;
@end

@implementation DSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSMutableArray *array =  [NSMutableArray array];
    
    NSString *a = nil;
    
    [array addObject:a];
    
    
//
//    [[DSCrashGuardManager shareInstance] configCrashGuardService:DSCrashGuardTypeContainer];
//
//    [[NSMutableArray array]insertObject:@"1234" atIndex:0];
//
//    NSDictionary *dict =@{@"123":@"123"};
//    [dict objectForKey:@"sdfasdf"];
//
//    NSLog(@"1");
//
//
//    NSMutableArray *array = [NSMutableArray array];
//    CFAbsoluteTime a = CFAbsoluteTimeGetCurrent();
////        @try{
//            for (int i = 0; i < 1000000000; i++) {
//                int p = i%2;
////
////                if (0) {
////                    return;
////                }
////
//                [array addObject:@"1"];
//            }
////        }@catch (NSException *exception) {
////        }
//
//    CFAbsoluteTime b = CFAbsoluteTimeGetCurrent() - a;
//
//    NSLog(@"%f",b);
    
    
}

@end
