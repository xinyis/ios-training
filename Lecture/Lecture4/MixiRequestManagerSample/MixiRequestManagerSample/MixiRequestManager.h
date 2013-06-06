//
//  MixiRequestManager.h
//  MixiRequestManagerSample
//
//  Created by 武田 祐一 on 2013/05/13.
//  Copyright (c) 2013年 武田 祐一. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^completBlock)(NSURLResponse *response, NSData *data);
typedef void (^errorBlock)(NSURLResponse *response, NSError *error);

@interface MixiRequestManager : NSObject

+(void)sendAsynchronousRequest:(NSURLRequest *)request completionHandler:(completBlock)cBlock  errorHandler:(errorBlock)eBlock;
@end
