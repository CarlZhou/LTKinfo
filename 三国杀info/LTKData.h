//
//  LTKData.h
//  三国杀info
//
//  Created by Zian Zhou on 2013-01-21.
//  Copyright (c) 2013 Zian Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LTKData : NSObject

@property (strong) NSString *title;
@property (assign) float rating;

- (id)initWithTitle:(NSString *)title rating:(float)rating;

@end
