//
//  TestQueue.h
//  HomeWork1.1
//
//  Created by 孫 辛夷 on 2013/06/03.
//  Copyright (c) 2013年 孫 辛夷. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TestQueue : NSObject

@property NSMutableArray *queque;

-(void)push:(id)object;
-(id) pop;
-(NSInteger)size;

@end
