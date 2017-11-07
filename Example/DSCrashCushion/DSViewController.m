//
//  DSViewController.m
//  DSCrashCushion
//
//  Created by zhangdasen@foxmail.com on 11/04/2017.
//  Copyright (c) 2017 zhangdasen@foxmail.com. All rights reserved.
//

#import "DSViewController.h"
#import "DSSwizzle.h"
@interface DSViewController ()
@property (nonatomic, strong)UIButton *clickBtn;
@end

@implementation DSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    [NSMutableArray swizzleMethod:@selector(addObject:) newSel:@selector(safeAddObject:) isClass:NO];
    
    [[NSMutableArray array]addObject:nil];
}

@end
