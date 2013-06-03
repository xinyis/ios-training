//
//  View2ViewController.h
//  Day1
//
//  Created by 孫 辛夷 on 2013/06/03.
//  Copyright (c) 2013年 孫 辛夷. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol View2ViewControllerDelegate <NSObject>
-(void)didPressCloseButton;
@end

@interface View2ViewController : UIViewController

@property (nonatomic, weak) id<View2ViewControllerDelegate> delegate; 

- (IBAction)pressClosedButton:(id)sender;

@end
