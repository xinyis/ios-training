//
//  MixiSampleClass.h
//  Day1
//
//  Created by 孫 辛夷 on 2013/06/03.
//  Copyright (c) 2013年 孫 辛夷. All rights reserved.
//

#import <Foundation/Foundation.h>

// [1] 列挙型
typedef NS_ENUM(NSInteger, SampleType){
    SampleTypeHoge = 0,
    SampleTypeFuga,
    SampleTypePiyo
};

@interface MixiSampleClass : NSObject

@property (nonatomic, strong) NSString *name; //[2] property
@property (nonatomic) NSInteger *price;

-(id)initWithName:(NSString *)name sampleType:(SampleType)sampleType; //[3] instance method
+(NSString *) getStaticString; //[4] class method

@end
