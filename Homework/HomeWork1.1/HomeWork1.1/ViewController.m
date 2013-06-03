//
//  ViewController.m
//  HomeWork1.1
//
//  Created by 孫 辛夷 on 2013/06/03.
//  Copyright (c) 2013年 孫 辛夷. All rights reserved.
//

#import "ViewController.h"
#import "TestQueue.h"
#import "TestStack.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
 
    //課題１
    NSArray *item1_entries = @[@"list_voice.pl", @"list_diary.pl", @"list_mymall_item.pl" ];
    NSDictionary *item1 = @{@"domain": @"mixi.jp",@"entry":item1_entries};
    
    NSDictionary *item2 = @{@"domain": @"itunes.apple.com"};
    
    NSDictionary *item3_query = @{@"tag_id":@7};
    NSDictionary *item3_entries = @{@"path":@"add_diary.pl",@"query":item3_query};
    NSDictionary *item3 = @{@"domain":@"mmall.jp",@"entry":item3_entries};
    NSArray *items = @[item1, item2, item3];
    
    NSLog(items[0][@"domain"]);
   
    //課題２
    //push 1 2 3
    //pop 3 times
    TestQueue *queque = [[TestQueue alloc]init];
    [queque push:@1];
    [queque push:@2];
    [queque push:@3];
    NSInteger size = [queque size];
    NSLog(@"%d",size);
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
