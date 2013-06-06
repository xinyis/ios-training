//
//  ViewController.m
//  MixiFeed
//
//  Created by 孫 辛夷 on 2013/06/06.
//  Copyright (c) 2013年 孫 辛夷. All rights reserved.
//

#import "ViewController.h"
#import "FeedCell.h"
#import "FeedEntry.h"
#import "TimeLineModel.h"

@interface ViewController ()
@property (nonatomic, strong) TimeLineModel *timelineModel;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIView *loadingView;
@property (weak, nonatomic) IBOutlet UILabel *connectionFailedLabel;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    _timelineModel = [[TimeLineModel alloc]init];
    [_timelineModel loadFeeds];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    
    [_tableView registerNib:[UINib nibWithNibName:@"FeedCell" bundle:nil] forCellReuseIdentifier:@"Cell"];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)timeLineModelDidFinishLoad
{
    [_tableView reloadData];
    [_loadingView removeFromSuperview];
}

-(void)timeLineModelDidFailLoad
{
    [_loadingView removeFromSuperview];
    _connectionFailedLabel.hidden = NO;
    _connectionFailedLabel.alpha = 0.0;
    [UIView animateWithDuration:0.5 animations:^{
        _connectionFailedLabel.alpha = 1.0;
        [self performSelector:@selector(hideConnectionFailedLabel) withObject:self afterDelay:1.0];
    }];
}

-(void)hideConnectionFaildLabel
{
    [UIView animateWithDuration:0.5
                          delay:0.0
                        options:UIViewAnimationOptionAllowAnimatedContent
                     animations:^{
                         _connectionFailedLabel.alpha = 0.0;
                     } completion:^(BOOL finished) {
                         _connectionFailedLabel.hidden = YES;
                     }];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
   // NSLog([NSString stringWithFormat:@"%@",_timelineModel.feedArray[0][@"date"]]);
    return [_timelineModel.feedArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    FeedCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (cell == nil) {
        cell = [[FeedCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"];
    }
    
        cell.dateLabel.text = [NSString stringWithFormat:@"%@",_timelineModel.feedArray[indexPath.row][@"date"]];
        cell.authorLabel.text = [NSString stringWithFormat:@"%@",_timelineModel.feedArray[indexPath.row][@"author"]];

        return cell;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 125;
}

@end
