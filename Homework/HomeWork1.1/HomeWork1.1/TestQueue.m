//
//  TestQueue.m
//  HomeWork1.1
//
//  Created by 孫 辛夷 on 2013/06/03.
//  Copyright (c) 2013年 孫 辛夷. All rights reserved.
//

#import "TestQueue.h"

@implementation TestQueue

-(void)push:(id)object{
    [_queque addObject:object];
}

-(id) pop{
    NSObject *item = _queque[0];
    [_queque removeObjectAtIndex:@0];
    return item;
    
}

-(NSInteger)size{
    return [_queque count];
}

@end
