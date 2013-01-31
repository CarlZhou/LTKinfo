//
//  LTKData.m
//  三国杀info
//
//  Created by Zian Zhou on 2013-01-21.
//  Copyright (c) 2013 Zian Zhou. All rights reserved.
//

#import "LTKData.h"

@implementation LTKData

@synthesize title = _title;
@synthesize rating = _rating;

- (id)initWithTitle:(NSString *)title rating:(float)rating
{
    if((self = [super init])) {
        self.title = title;
        self.rating = rating;
    }
    return self;
}

@end
