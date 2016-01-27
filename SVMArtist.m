//
//  SVMArtist.m
//  ExampleSoftheme
//
//  Created by System Administrator on 1/27/16.
//  Copyright (c) 2016 Victor Solonets. All rights reserved.
//

#import "SVMArtist.h"

@implementation SVMArtist

- (instancetype) initWithName : (NSString*) newName andListOfSong : (NSArray*) newList {
    self = [super init];
    if (!self) {
        return nil;
    } else {
        [self setName:newName];
        [self setListOfSong:newList];
        return self;
    }
}

@end
