//
//  NetworkTools.m
//  NE-News
//
//  Created by Tiffany宝 on 16/3/31.
//  Copyright © 2016年 Tiffany. All rights reserved.
//

#import "NetworkTools.h"

@implementation NetworkTools

+(instancetype)shareTools{
    
    static NetworkTools *instance;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        NSURL *url = [NSURL URLWithString:@"http://c.m.163.com/nc/article/headline/"];
        instance = [[NetworkTools alloc]initWithBaseURL:url];
    });
    
    return instance;
}

@end
