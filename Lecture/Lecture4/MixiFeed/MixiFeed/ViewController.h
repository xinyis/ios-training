//
//  ViewController.h
//  MixiFeed
//
//  Created by 孫 辛夷 on 2013/06/06.
//  Copyright (c) 2013年 孫 辛夷. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TimeLineModel.h"

@interface ViewController : UIViewController<
TimeLineModelDelegate,
UITableViewDataSource,
UITableViewDelegate>


@end
