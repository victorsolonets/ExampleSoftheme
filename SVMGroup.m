//
//  SVMGroup.m
//  ExampleSoftheme
//
//  Created by System Administrator on 1/27/16.
//  Copyright (c) 2016 Victor Solonets. All rights reserved.
//

#import "SVMGroup.h"

@implementation SVMGroup

- (instancetype) initWithName : (NSString*) newName andListOfSong : (NSArray*) newListSong andArtists : (NSArray*) newListArtists {
    self = [super init];
    if (!self) {
        return nil;
    } else {
        [self setName:newName];
        [self setListOfSong:newListSong];
        [self setListOfArtis:newListArtists];
        return self;
    }
}
@end
