//
//  TimeLineModel.m
//  MixiFeed
//
//  Created by 孫 辛夷 on 2013/06/06.
//  Copyright (c) 2013年 孫 辛夷. All rights reserved.
//

#import "TimeLineModel.h"

@implementation TimeLineModel

-(void)loadFeeds
{
    NSURL *url = [NSURL URLWithString:@"https://raw.github.com/mixi-inc/iOSTraining/master/SampleData/9.3/timeline.json"];
        
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
        [request setHTTPMethod:@"GET"];
        
    NSHTTPURLResponse *response;
    NSError *error;
    NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
    
    if(error){
        if([_delegate respondsToSelector:@selector(didFailLoadFeeds)]){
            [_delegate didFailLoadFeeds];
        }
    }
    else{
    
        _feedArray= [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
        NSLog(@"%@",_feedArray);
        
    
        if([_delegate respondsToSelector:@selector(didFinishLoadFeeds)]){
        [_delegate didFinishLoadFeeds];
        }
    }
}

@end
