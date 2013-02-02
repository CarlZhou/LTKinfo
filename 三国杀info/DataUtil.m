//
//  DataUtil.m
//  三国杀info
//
//  Created by Zian Zhou on 2013-01-30.
//  Copyright (c) 2013 Zian Zhou. All rights reserved.
//
//

#import "DataUtil.h"

@implementation DataUtil

- (NSMutableArray *)getCharacters
{
    return self.characters;
}

#pragma mark Singleton

+ (DataUtil *)sharedInstance
{
    static DataUtil *sharedBookDao = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedBookDao = [[DataUtil alloc] init];
    });
    return sharedBookDao;
}


@end
