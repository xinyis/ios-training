//
//  AssetsViewController.h
//  HomeWork5.1
//
//  Created by 孫 辛夷 on 2013/06/06.
//  Copyright (c) 2013年 孫 辛夷. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AssetsViewControllerDelegate <NSObject>
-(void)didPressCloseButton;
@end

@interface AssetsViewController : UIViewController

@property (nonatomic, weak) id<AssetsViewControllerDelegate
> delegate;

@end

