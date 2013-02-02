//
//  DataUtil.h
//  三国杀info
//
//  Created by Zian Zhou on 2013-01-30.
//  Copyright (c) 2013 Zian Zhou. All rights reserved.
//
//

#import <Foundation/Foundation.h>

@interface DataUtil : NSObject


+ (DataUtil *) sharedInstance;


@property (strong, nonatomic) NSMutableArray *characters;

- (void)setCharacters:(NSMutableArray *)characters;
- (NSMutableArray *)getCharacters;




@end
