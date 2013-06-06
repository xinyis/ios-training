//
//  MixiRequestManager.m
//  MixiRequestManagerSample
//
//  Created by 武田 祐一 on 2013/05/13.
//  Copyright (c) 2013年 武田 祐一. All rights reserved.
//

#import "MixiRequestManager.h"

@implementation MixiRequestManager

// ここにメソッドを実装する
+(void)sendAsynchronousRequest:(NSURLRequest *)request completionHandler:(completBlock)cBlock  errorHandler:(errorBlock)eBlock
{
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    
    dispatch_async(queue, ^{
        NSHTTPURLResponse *response;
        NSError *error;
        NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
        if(error){
            dispatch_async(dispatch_get_main_queue(),^{
                eBlock(response,error);});
        }else{
            dispatch_async(dispatch_get_main_queue(),^{
                cBlock(response,data);});
        }
    });
    

}

@end
