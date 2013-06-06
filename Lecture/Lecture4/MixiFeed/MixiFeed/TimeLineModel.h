//
//  TimeLineModel.h
//  MixiFeed
//
//  Created by 孫 辛夷 on 2013/06/06.
//  Copyright (c) 2013年 孫 辛夷. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TimeLineModelDelegate <NSObject>
-(void)didFinishLoadFeeds;
-(void)didFailLoadFeeds;
@end

@interface TimeLineModel : NSObject

@property(nonatomic, strong) NSArray *feedArray;
@property (nonatomic, weak) id<TimeLineModelDelegate> delegate;

- (void)loadFeeds;

@end
