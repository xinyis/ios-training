//
//  AssetsViewController.m
//  HomeWork5.1
//
//  Created by 孫 辛夷 on 2013/06/06.
//  Copyright (c) 2013年 孫 辛夷. All rights reserved.
//

#import "AssetsViewController.h"
#import <AssetsLibrary/AssetsLibrary.h>

@interface AssetsViewController ()
@property (nonatomic, strong) ALAssetsLibrary *assetsLibrary;
@end

@implementation AssetsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    _assetsLibrary = [[ALAssetsLibrary alloc] init];
    [_assetsLibrary enumerateGroupsWithTypes:ALAssetsGroupAll
                                  usingBlock:^(ALAssetsGroup *group, BOOL *stop) {
                                      NSLog(@"AssetsGroup : %@", group);
                                  } failureBlock:^(NSError *error) {
                                      // iPhone の設定で写真アクセスを拒否している場合
                                  }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
