//
//  ChildViewController.h
//  HomeWork1.2
//
//  Created by 孫 辛夷 on 2013/06/04.
//  Copyright (c) 2013年 孫 辛夷. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol ChildViewControllerDelegate <NSObject>
-(void)didPressCloseButton;
@end

@interface ChildViewController : UIViewController

@end
