//
//  TestStack.m
//  HomeWork1.1
//
//  Created by 孫 辛夷 on 2013/06/03.
//  Copyright (c) 2013年 孫 辛夷. All rights reserved.
//

#import "TestStack.h"

@implementation TestStack

-(void)push:(id)object{
    [_stack addObject:object];
}

-(id) pop{
    NSInteger size = [_stack count];
    NSObject *item = _stack[size];
    [_stack removeObjectAtIndex:size];
    return item;
    
}

-(NSInteger)size{
    return [_stack count];
}

@end
